open Ast

module StringMap = Map.Make(String)

let check (globals, functoins) = 
  let report_duplicate excetf list =
    let rec helper = function
        n1 :: n2 :: _ when n1 = n2 -> raise (Failure (exceptf n1))
      | _ :: t -> helper t
      | [] -> ()
    in helper (List.sort compare list)
  in

  let check_not_void exceptf = function
      (Void, n) -> raise (Failure (exceptf n))
    | _ -> ()
  in

  let check_assign lvaluet rvaluet err = 
     if lvaluet == rvaluet then lvaluet else raise err
  in

  (**** Checking Global Variables ****)
  List.iter (check_not_void (fun n -> "illegal void global " ^ n))
            globals;

  report_duplicate (fun n -> "duplicate global " ^ n)
                   (List.map snd globals);
  
  (**** Checking Functions ****)
  if List.mem "print" (List.map (fun fd -> fd.fname) functions)
  then raise (Failure ("function print may not be defined")) else ();

  (*Check for duplicate. 2 functions cannot have same name, therefore also does not allow overload*)
  report_duplicate (fun n -> "duplicate function " ^ n)
     (List.map (fun fd -> fd.fname) functions);

  (* Function declaratoin for a named function (build in function) *)
  (* Just comment the way in the ppt + myown thought*)
  (*let built_in_decls = StringMap.add "index"
     { typ = int; fname = "index"; formals = [(String, "x"),(String, "y")];
       locals = []; body = [] }
     StringMap.add "substr" { typ = string; fname = "substring"; formals = [(String, "x"),(int, "a"),(int, "b")]; locals = []; body = []}
     StringMap.add "tolower" { typ = string; fname = "tolower"; formals = [(String, "x")]; locals = []; body = []}
     StringMap.add "toupper" { typ = string; fname = "upper"; formals = [(String, "x")]; locals = []; body = []}
     StringMap.add "TAPE" { typ = string; fname = "TAPE"; formals = [(String, "x"), (String, "y")]; locals = []; body = []}

  in*)
  
  (* Use 2 array to hold the details then throw to the built_in_decls by list.fold *)
  let built_in_decls_funcs = [
      { typ = Int; fname = "index"; formals = [(String, "x"),(String, "y")]; locals = []; body = [] };
      
      { typ = String; fname = "substring"; formals = [(String, "x")]; locals = []; body = []};

      { typ = String; fname = "tolower"; formals = [(String, "x")]; locals = []; body = []};
  
      { typ = String; fname = "toupper"; formals = [(String, "x")]; locals = []; body = []};

      { typ = String; fname = "TAPE"; formals = [(String, "x"),(String, "y")]; locals = []; body = [] };
 
      { typ = Void; fname = "print_i"; formals = [(Int, "x")] ; locals = []; body = [] };

      { typ = Void; fname = "print_f"; formals = [(Float, "x")]; locals = []; body = [] };

      { typ = String; fname = "open_read"; formals = [(String, "x")]; locals = []; body = [] };

      { typ = Int; fname = "write"; formals = [(String, "x"),(String, "y")]; locals = []; body = [] };

  ]

  in

  let built_in_decls_names = [ "index"; "substring"; "tolower"; "toupper"; "TAPE"; "print_i"; "print_f"; "open_read"; "write"];
  
  in

  let built_in_decls = List.fold_right2 (StringMap.add)
                        built_in_decls_names
                        built_in_decls_func
                        (StringMap.singleton "print_s"
                                 { typ = Void; fname = "print_s"; formal = [(String, "x")]; locals = []; body = [] })

  let function_decls = 
     List.fold_left (fun m fd -> StringMap.add fd.fname fd m)
                    built_in_decls functions
  in

  let functoin_decls s = try StringMap.find s function_decls
     with Not_found -> raise (Failure ("unrecognized function "^s))
  in

  (*ensure "main" is defined*)
  let _=function_decl "main" in 
  let check_function func=

    List.iter(check_not_void (fun n ->
		"illegal void formal "^" in " ^ func.fname))
	func.formals;    
    
    report_duplicate (fun n->
		"duplicate formal "^n^" in " ^ func.fname) 
        (List.map snd func.formals);

    List.iter (check_not_void (fun n->
		"illegal void local "^n^ " in "^ func.fname))
	func.locals;

    report_duplicate (fun n->
		"duplicate local "^n^" in " ^ func.fname) 
        (List.map snd func.locals);


  (*variable symbol Table*)
  let symbols = List.fold_left
		(fun m(t,n) -> StringMap.add n t m)
		StringMap.empty
		( globals @ func.formals @ func.locals )
  in

  let type_of_identifier s = 
    try StringMap.find s symbols
    with Not_found->
      raise (Failure ("undeclared identifier " ^ s))
  in

  (*expression-return the type of an expression or throw an exception*)
  let rec expr = function
	Literal _ -> Int
      | FloatLit _ -> Float
      | Noexpr _ -> Void
      | BoolLit _ -> Bool
      | String s -> type_of_identifier s
      | Assign(var, e) as ex -> let lt=type_of_identifier var 
				and rt=expr e in
        check_assign lt rt
		(Failure ("illegal assignment "^ string_of_typ lt ^
		 " =" ^ string_of_type rt ^" in " ^ string_of_expr ex))

  | Binop(e1, op, e2) as e-> let t1 = expr e1
			     and t2 = expr e2 in
    (match op with
      Add | Sub | Mult when t1 = Int && t2 = Int
    | Equal  when t1=t2 -> Bool
    | Less | Greater when t1 = Int && t2 = Int -> Bool
    | _ -> raise(Failure ("illegal binary operator "^ 
		   string_of_type t1 ^ " " ^ string_of_op op ^ " " ^
		   string_of_type t2 ^ " in " ^ string_of_expr e))
    )

  
    (*need to add some more expr and unop follow with function call*)
  | Unop(op, e) as ex -> let t = expr e in
    (match op with
      Not when t = Bool -> Bool 
    | _ -> raise (Failure ("illegal unary operator " ^
                  string_of_uop op ^ string_of_typ t ^
                  " in " ^ string_of_expr ex)))

    (*statment*)
    let check_bool_expr e = if expr e != Bool
      then raise (Failure ("expected Boolean expression in " ^
                  string_of_expr e))
      else () in

    let rec stmt = function
	     Expr e -> ignore (expr e)

      | If(p,b1,b2)-> check_bool_expr p; stmt b1; stmt b2
      | For(e1,e2,e3,st)-> ignore(expr e1); check_bool_expr e2;
			   ignore(expr e3); stmt st
   
      | While(p,s) -> check_bool_expr p; stmt t

      | Return e->
	  let t = expr e in
	   if t = func.typ then ()
    	 else raise (Failure ("return gives " ^ string_of_typ t^
		     " expected " ^ string_of_typ func.typ ^ " in " ^ 
		     string_of_expr e))
      | Block s1 -> let rec check_block = function
      	    [Return _ as s] -> stmt s
	    | Return _ :: _ ->
	       raise (Failure "nothing may follow a return")
      | Block s1 :: ss -> check_block (s1 @ ss)
	    | s :: ss -> stmt s ; check_block ss
	    | [] -> ()
        in check_block s1

  in stmt (Block func.body) (*body of check_function*)

  in List.iter check_function functions (*body of check*)




   

  


    
