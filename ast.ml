type typ = Int | Float | Char | String | File | Void | Bool

type op = Plus | Minus | Times | Equal | Less | LessEQ | Great | GreatEQ | PLUSEQ | MINUSEQ

type uop = Not

type crement = INCREMENT | DECREMENT

type bind = typ * string

type expr = Literal of int
          | FloatLit of float
          | StringLit of string
          | Binop of expr * op * expr
          | Assign of string * expr
          | Unop of uop * expr
          | Noexpr
          | Searchstring of string
          | BoolLit of bool
          | Call of string * expr list

type stmt = Block of stmt list
   | Expr of expr
   | If of expr * stmt * stmt
   | For of expr * expr * expr * stmt
   | While of expr * stmt
   | Return of expr
   

type func_decl = {
   typ : typ;
   fname : string;
   formals : bind list;
   locals : bind list;
   body : stmt list;
}


type program = bind list * func_decl list


let string_of_op = function
    Plus -> "+"
  | Minus -> "-"
  | Times -> "*"
  | Equal -> "=="
 (* | Neq -> "!="*)
  | Less -> "<"
  | LessEQ -> "<="
  | Great -> ">"
  | GreatEQ -> ">="
 (* | And -> "&&"
  | Or -> "||"*)

let string_of_uop = function
    (* Neg -> "-" *)
  Not -> "!"

let string_of_typ = function
    Int    -> "int"
  | Bool   -> "bool"
  | Void   -> "void"
  | String -> "string"
  | Float  -> "float"

let rec string_of_expr = function
    Literal(l) -> string_of_int l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | StringLit(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Noexpr -> ""

let rec string_of_stmt = function 
    Block (stmts) -> "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
  |  Expr(expr) -> string_of_expr expr ^ ";\n";
  | Return (expr) -> "return " ^ string_of_expr expr ^ ";\n";
  | If (e,s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
  | For(e1, e2, e3, s) -> 
    "for (" ^ string_of_expr e1 ^ " ; " ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3 ^ ")" ^ string_of_stmt s
  | While(e,s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s 

let string_of_vdecl (t,id) = string_of_typ t ^ " " ^ id ^ ";\n" 

let string_of_fdecl fdecl = 
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " (List.map snd fdecl.formals) ^ ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl fdecl.locals) ^
  String.concat "" (List.map string_of_stmt fdecl.body) ^ "}\n"


let rec string_of_program(vars, funcs) = 
  String.concat "" (List.map string_of_vdecl vars) ^ "\n" ^
  String.concat "\n" (List.map string_of_fdecl funcs)

