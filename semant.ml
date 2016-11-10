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

  report_duplicate (fun n -> "duplicate function " ^ n)
     (List.map (fun fd -> fd.fname) functions);

  (* Function declaratoin for a named function (build in function) *)
  (* Not fin *)
  let built_in_decls = StringMap.add "index"
     { typ = int; fname = "index"; formals = [(String, "x"),(String, "y")];
       locals = []; body = [] }
     StringMap.add "substr" { typ = string; fname = "substring"; formals = [(String, "x"),(int, "a"),(int, "b")]; locals = []; body = []}
     StringMap.add "tolower" { typ = string; fname = "tolower"; formals = [(String, "x")]; locals = []; body = []}
     StringMap.add "toupper" { typ = string; fname = "upper"; formals = [(String, "x")]; locals = []; body = []}
     StringMap.add "TAPE" { typ = string; fname = "TAPE"; formals = [(String, "x"), (String, "y")]; locals = []; body = []}

  in

  let function_decls = 
     List.fold_left (fun m fd -> StringMap.add fd.fname fd m)
                    built_in_decls functions
  in

  let functoin_decls s = try StringMap.find s function_decls
