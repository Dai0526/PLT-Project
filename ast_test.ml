type typ = Int | Float | Char | String | File | Void | True | Fasle

type mathop = Add | Minus | Times 

type genop = Equal | UnEqual | Less | LessEQ | Great | GreatEQ | Match | NotMatch

type mathexpr = Literal of int
              | FloatLit of float
              | Binop of mathexpr * mathop * mathexpr
