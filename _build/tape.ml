type action = Ast | LLVM_IR | Compile
let _=
    let action = if Array.length Sys.argv > 1 then
	List.assoc Sys.argv.(1)
	    [ ("-a", Ast); ("-l", LLVM_IR); ("-c", Compile) ]
    else Compile in

    let lexbuf = Lexing.from_channel stdin in
    let ast=Parser.program Scanner.token lexbuf in
    
    Semant.initial_check ast;
    
    
    match action with
	Ast -> print_string (Ast.string_of_program ast)

    | LLVM_IR -> print_string (Llvm.string_of_llmodule
					(Codegen.translate (ast,ast2)))

    | Compile -> let m = Codegen.translate (ast,ast2) in 
      Llvm_analysis.assert_valid_module m;
      print_string (Llvm.string_of_llmodule m)
