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
  | Greater -> ">"
  | GreatEQ -> ">="
 (* | And -> "&&"
  | Or -> "||"*)

let string_of_uop = function
    Neg -> "-"
  | Not -> "!"

let rec string_of_expr = function
    Literal(l) -> string_of_int l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | Id(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Noexpr -> ""
