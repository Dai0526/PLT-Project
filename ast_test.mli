type typ = Int | Float | Char | String | File | Void | True | Fasle

type op = Plus | Minus | Times | Equal | Less | LessEQ | Great | GreatEQ | PLUSEQ | MINUSEQ

type uop = Not

type crement = INCREMENT | DECREMENT

type matching = Match



type bind = typ * string

type expr = Literal of int
          | FloatLit of float
          | StringLit of string
          | Binop of expr * op * expr
          | Assign of string * expr
          | Unop of uop * expr
          | Noexpr

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

type index = { 
   key : string;
   tar : string;
}

type substr = {
   tar : string;
   start : int;
   fin : int;
}

type tolower = {
   tar : string;
}

type toupper = {
   tar : string;
}
