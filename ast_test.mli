type typ = Int | Float | Char | String | File | Void | True | Fasle

type op = Add | Minus | Times 

type genop = Equal | Less | LessEQ | Great | GreatEQ

type uop = Not

type matching = Match



type bind = typ * string

type mathexpr = Literal of int
              | FloatLit of float
              | Binop of mathexpr * op * mathexpr
              | Assign of string * mathexpr
              | Binop of mathexpr * genop * mathexpr
              | Unop of uop * mathexpr

type stringexpr = StringLit of string
                | Binop of stringexpr * op * stringexpr
                | Binop of stringexpr * genop * stringexpr
                | Assign of string * stringexpr
                | Unop of uop * stringexpr

type stmt = Block of stmt list
   | Mathexpr of mathexpr
   

type func_decl = {
   tyo : typ;
   fname : string;
   formals : bind list;
   locals : bind list;
   body : stmt list;
}

type program = bind list * func_decl list


