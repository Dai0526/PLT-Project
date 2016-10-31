type op =  Increment | Decrement | Equal | UnEqaul | Less | LessEQ | Great | GreatEQ | Match | NotMatch | Add | Minus | Times | PlusEQ | MinusEQ | TimesEQ | DivideEQ | And | Or | Condition

type typ = Int | Float | Char | String | File | Void | True | False

type bind = typ * string

type expr = Literal of int
          | Id of string
          | Literal of float
          | Assign of string * expr 
          | Binop of expr * op * expr

type stmt = If of expr * stmt * stmt
          | For of expr * expr *expr
          | While of expr * stmt
          | Expr of expr
          | Return of expr 
