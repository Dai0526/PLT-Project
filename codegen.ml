module L = Llvm
module A = Ast

module StringMap = Map.Make(Stringi)

let translate (globals, function) =

    let context = L.global_context () in
    let the_module = L.create_module context "tape"
	and i32_t  = L.i32_type context
	and i8_t   = L.i8_type context
	and flt_t  = L.double_type context
	and str_t  = L.pointer_type (L.i8_type context)
	and void_t = L.void_type context in

    let rec ltype_of_typ = function
	  A.Int -> i32_t
	| A.Float -> flt_t
	| A.String -> str_t
	| A.None -> void_t       
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
	    and formal_types = Array.of_list (List.map find_type fdecl.A.formals)
	in
	    let ftype = L.function_type (lreturn_type fdecl.A.typ) formal_types in
		StringMap.add name (L.define_function name ftype the_module, fdecl) m
	in 
	    List.fold_left function_decl StringMap.empty functions
    in

