type op = Merge | Check | Increment | Decrement | Equal | UnEqaul | Less | LessEQ | Great | GreatEQ | Match | NotMatch

type typ = Int | Float | Char | String | File

type bind = typ * string

type expr = Literal of int
          | Id of string
          | Literal of float
          | Assign of string * expr 

type stmt = If of expr * stmt * stmt
          | For of expr * expr *expr
          | While of expr * stmt
          | Expr of expr
          | Return of expr
