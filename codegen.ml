module L = Llvm
module A = Ast
module Fcmp = Llvm.Fcmp
module StringMap = Map.Make(String)

let translate(globals,functions) =
    let context = L.global_context () in
    let the_module = L.create_module context "tape"
	
    and i32_t  = L.i32_type context
	and i8_t   = L.i8_type context
	and i1_t   = L.i1_type context (*bool*)
	and flt_t  = L.double_type context
	and ptr_t  = L.pointer_type (L.i8_type context)
	and void_t = L.void_type context in

    let ltype_of_typ = function
	  A.Int -> i32_t
	| A.Float -> flt_t
	| A.String -> ptr_t
	| A.Void -> void_t
	| A.Bool -> i1_t       
    (*There may have more things need to be put*)
    in
    (*global variable*)
    let global_vars = 
	let global_var m (t,n) = 
	    let init = L.const_int (ltype_of_typ t) 0
	    in StringMap.add n (L.define_global n init the_module) m in
	List.fold_left global_var StringMap.empty globals in

    let function_decls = 
	let function_decl m fdecl = 
	    let name  = fdecl.A.fname
	    and formal_types = Array.of_list (List.map (fun (t,_) -> ltype_of_typ t) fdecl.A.formals)
	in
	    let ftype = L.function_type (ltype_of_typ fdecl.A.typ) formal_types in
		StringMap.add name (L.define_function name ftype the_module, fdecl) m
	in 
	    List.fold_left function_decl StringMap.empty functions
    in

 
    (*declare external function printf*)
    let printf_t = L.var_arg_function_type i32_t [|L.pointer_type i8_t |] in  
    let print_func = L.declare_function "printf" printf_t the_module in


    (*file open and close*)
    let open_file_t = L.function_type ptr_t [| L.pointer_type i8_t |] in
    let open_file_func = L.declare_function "fopen" open_file_t the_module in

    let close_file_t = L.function_type i32_t [| i32_t |] in
    let close_file_func = L.declare_function "fclose" close_file_t the_module in

    let write_t = L.function_type i32_t [| i32_t; ptr_t |] in 
    let write_func = L.declare_function "fputs" write_t the_module in

    let get_t = L.function_type i32_t [|ptr_t; i32_t; ptr_t|] in 
    let write_func = L.declare_function "fgets" get_t the_module in

   
    (*build function body - fill in the body of the given function*)
    let build_function_body fdecl = 
	let (the_function, _) = 
	    StringMap.find fdecl.A.fname function_decls in
	let builder = (*create an instruction builder*)
	    L.builder_at_end context (L.entry_block the_function) in 
	let int_formal_str = (*Format string for printf calls*)
	    L.build_global_stringptr "%d\n" "fmt" builder in 

    (* formals and locals  *)
    let local_vars = 
	let add_formal m (t,n) p = L.set_value_name n p;
	    let local = L.build_alloca (ltype_of_typ t) n builder in
	    ignore (L.build_store p local builder); 
	    StringMap.add n local m in
        
        let add_local m (t, n) = 
          let local_var = L.build_alloca (ltype_of_typ t) n builder
          in StringMap.add n local_var m in

        let formals = List.fold_left2 add_formal StringMap.empty
	    fdecl.A.formals (Array.to_list (L.params the_function)) in 
	List.fold_left add_local formals fdecl.A.locals in

    (*look up  for a variable among locals/formal arguments, then the golbals*)
    let lookup n = try StringMap.find n local_vars
		   with Not_found -> StringMap.find n global_vars
    in

     
    (*expression*)
    let rec expr builder = function
	  A.Literal i -> L.const_int i32_t i   (*boolean not included*)
	| A.FloatLit f -> L.const_float flt_t f
	| A.Noexpr ->	L.const_int i32_t 0
        | A.String s -> L.build_load (lookup s) s builder
	| A.Searchstring ss -> L.build_load (lookup ss) ss builder
	| A.Assign (s,e) -> let e' = expr builder e in
		ignore (L.build_store e' (lookup s) builder); e'
	| A.Binop (e1, op, e2) ->
	    let e1' = expr builder e1
	    and e2' = expr builder e2 in
	    (match op with 
		A.Plus -> L.build_plus
	      | A.Minus -> L.build_minus
	      | A.Times -> L.build_times
              | A.Equal -> L.build_fcmp L.Fcmp.Oeq  (*Fcmp is a module imported, no unequal*)
	      | A.Less  -> L.build_fcmp L.Fcmp.Ols
	      | A.Great -> L.build_fcmp L.Fcmp.Pgt
	      | A.Lesseq -> L.build_fcmp L.Fcmp.le
	      | A.Greateq -> L.build_fcmp L.Fcmp.ge
	    ) e1' e2' "tmp" builder

	| A.Unop(op, e) ->
	    let e' = expr builder e in
	    (match op with
		A.Not -> L.build_not) e' "tmp" builder

	(*build in function filled below*)
	| A.Call("print_s",[e]) -> L.build_call printf_func
					[| int_format_str; (expr builder e)|]
					"printf" builder


	| A.Call (f, act) ->
	    let (fdef, fdecl) = StringMap.find f function_decls in 
   
  let actuals = List.rev (List.map (expr builder) (List.rev act)) in
  let result = (match fdecl.A.typ with A.Void -> ""
						| _ -> f ^ "_result") in
	  L.build_call fdef (Array.of_list actuals) result builder
    in   
    (*statements*)	
    let add_terminal builder f = 
	match L.block_terminator (L.inseartion_block builder) with
	    Some _ -> ()
	  | None -> ignore (f builder) in
    let rec stmt builder = function
	A.Block sl -> List.fold_left stmt builder sl

      | A.Expr e -> ignore (expr builder e); builder
      | A.Return e -> ignore (match fdecl.A.typ with 
	  A.Void -> L.build_ret_void builder
	 | _ -> L.build_ret (expr builder e) builder); builder
      (*If Statement*)
      | A.If (predicate, then_stmt, else_stmt) ->
         let bool_val = expr builder predicate in
      let merge_bb = L.append_block context "merge" the_function in
       
      let then_bb = L.append_block context "then" the_function in
      add_terminal (stmt (L.builder_at_end context then_bb) then_stmt)
        (L.build_br merge_bb);
       
      let else_bb = L.append_block context "else" the_function in
      add_terminal (stmt (L.builder_at_end context else_bb) else_stmt)
        (L.build_br merge_bb);
      
      ignore (L.build_cond_br bool_val then_bb else_bb builder);
      L.builder_at_end context merge_bb
      (*While Statement *)
        | A.While (predicate, body) ->
        let pred_bb = L.append_block context "while" the_function in
        ignore (L.build_br pred_bb builder);
        
        let body_bb = L.append_block context "while_body" the_function in
        add_terminal (stmt (L.builder_at_end context body_bb) body)
          (L.build_br pred_bb);
        
        let pred_builder = L.builder_at_end context pred_bb in
        let bool_val = expr pred_builder predicate in
        
        let merge_bb = L.append_block context "merge" the_function in
        ignore (L.build_cond_br bool_val body_bb merge_bb pred_builder);
        L.builder_at_end context merge_bb
      (*For Statements*)
      
        | A.For (e1, e2, e3, body) -> stmt builder
          ( A.Block [A.Expr e1 ; A.While (e2, A.Block [body ; A.Expr e3]) ] )
      in
      
      let builder = stmt builder (A.Block fdecl.A.body) in 

      add_terminal builder (match fdecl.A.typ with
          A.Void -> L.build_ret_void
        | t-> L.build_ret(L.const_int (ltype_of_typ t) 0))

    in

    List.iter build_function_body functions;
    the_module



