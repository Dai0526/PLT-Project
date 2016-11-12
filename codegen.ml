module L = Llvm
module A = Ast

module StringMap = Map.Make(String)

let translate (globals, functions) = 
	let context = L.global_context () in
	let the_module = L.create_module context "TAPE"
        
        (* assign type to correspond data type*)
	and i32_t = L.i32_type context
	and i8_t = L.i8_type context
	and i1_t = L.i1_type context
	and flt_t = L.double_type context
	and str_t = L.pointer_type (L.i8_type context)
	and void_t = L.void_type context      in

	let ltype_of_typ = function
	    A.Int    ->  i32_t
	  | A.Float  ->  flt_t
	  | A.String ->  str_t
	  | A.Void   ->  void_t    in

        (* declare globals *)
	let globals_vars = 
          let globals_var m (t, n) = 
            let init = L.const_int (ltype_of_int t) 0
            in StringMap.add n (L.define_global n init the_module) m in
          List.fold_left golbal_var StringMap.empty globals in

        let open_file_t = L.function_type ptr_t [| L.pointer_type i8_t |] in
        let open_file_func = L.declare_function "fopen" open_file_t the_module in

        let close_file_t = L.function_type i32_t [| i32_t |] in
        let close_file_func = L.declare_function "fclose" close_file_t the_module in
      
        let 
