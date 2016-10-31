type typ = Int | Float | Char | String | File | Void | True | Fasle

type mathop = Add | Minus | Times 

type genop = Equal | UnEqual | Less | LessEQ | Great | GreatEQ | Match | NotMatch
type bind = typ * string

type mathexpr = Literal of int
              | FloatLit of float
              | Binop of mathexpr * mathop * mathexpr
              | Assign of string * mathexpr

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


