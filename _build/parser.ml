type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACKET
  | RBRACKET
  | COMMA
  | IF
  | ELSE
  | WHILE
  | FOR
  | RETURN
  | INCLUDE
  | PLUS
  | MINUS
  | TIMES
  | ASSIGN
  | BOOL
  | TRUE
  | FALSE
  | INCREMENT
  | DECREMENT
  | PLUSEQ
  | MINUSEQ
  | EQUAL
  | LESS
  | LESSEQ
  | GREAT
  | GREATEQ
  | UNEQUAL
  | NOT
  | NEW
  | INT
  | CHAR
  | VOID
  | STRING
  | FLOAT
  | LITERAL of (int)
  | STRINGLIT of (string)
  | NEWSTRINGLIT of (string)
  | CHAR_LITERAL of (char)
  | EOF

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast 
# 51 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* LBRACKET *);
  263 (* RBRACKET *);
  264 (* COMMA *);
  265 (* IF *);
  266 (* ELSE *);
  267 (* WHILE *);
  268 (* FOR *);
  269 (* RETURN *);
  270 (* INCLUDE *);
  271 (* PLUS *);
  272 (* MINUS *);
  273 (* TIMES *);
  274 (* ASSIGN *);
  275 (* BOOL *);
  276 (* TRUE *);
  277 (* FALSE *);
  278 (* INCREMENT *);
  279 (* DECREMENT *);
  280 (* PLUSEQ *);
  281 (* MINUSEQ *);
  282 (* EQUAL *);
  283 (* LESS *);
  284 (* LESSEQ *);
  285 (* GREAT *);
  286 (* GREATEQ *);
  287 (* UNEQUAL *);
  288 (* NOT *);
  289 (* NEW *);
  290 (* INT *);
  291 (* CHAR *);
  292 (* VOID *);
  293 (* STRING *);
  294 (* FLOAT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  295 (* LITERAL *);
  296 (* STRINGLIT *);
  297 (* NEWSTRINGLIT *);
  298 (* CHAR_LITERAL *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\004\000\005\000\003\000\003\000\
\003\000\007\000\009\000\009\000\012\000\012\000\008\000\008\000\
\008\000\008\000\008\000\010\000\010\000\006\000\011\000\011\000\
\013\000\013\000\013\000\013\000\013\000\013\000\013\000\014\000\
\014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
\014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
\014\000\014\000\014\000\014\000\014\000\015\000\015\000\016\000\
\016\000\017\000\017\000\000\000"

let yylen = "\002\000\
\003\000\000\000\001\000\001\000\002\000\005\000\000\000\002\000\
\002\000\009\000\000\000\001\000\002\000\004\000\001\000\001\000\
\001\000\001\000\001\000\000\000\002\000\003\000\000\000\002\000\
\002\000\002\000\003\000\003\000\007\000\009\000\005\000\001\000\
\001\000\001\000\003\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\002\000\001\000\001\000\
\004\000\004\000\006\000\006\000\008\000\000\000\001\000\000\000\
\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\060\000\007\000\000\000\004\000\000\000\
\000\000\005\000\000\000\017\000\015\000\019\000\016\000\018\000\
\001\000\008\000\009\000\000\000\000\000\000\000\006\000\022\000\
\000\000\000\000\000\000\000\000\013\000\000\000\000\000\020\000\
\000\000\000\000\014\000\021\000\000\000\000\000\000\000\023\000\
\010\000\000\000\000\000\000\000\000\000\047\000\048\000\000\000\
\032\000\000\000\034\000\036\000\024\000\000\000\000\000\000\000\
\000\000\000\000\026\000\000\000\046\000\000\000\000\000\000\000\
\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\028\000\000\000\000\000\000\000\000\000\027\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\039\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\049\000\000\000\000\000\000\000\000\000\
\000\000\031\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\051\000\029\000\000\000\000\000\000\000\
\053\000\030\000"

let yydgoto = "\002\000\
\004\000\005\000\009\000\006\000\007\000\018\000\019\000\020\000\
\027\000\034\000\038\000\028\000\053\000\054\000\079\000\082\000\
\083\000"

let yysindex = "\013\000\
\248\254\000\000\038\255\000\000\000\000\248\254\000\000\006\255\
\001\000\000\000\052\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\020\255\060\255\051\255\000\000\000\000\
\014\255\022\255\069\255\055\255\000\000\061\255\014\255\000\000\
\046\255\014\255\000\000\000\000\058\255\062\255\090\255\000\000\
\000\000\093\255\097\255\098\255\037\255\000\000\000\000\066\000\
\000\000\002\255\000\000\000\000\000\000\015\255\076\255\066\000\
\066\000\066\000\000\000\208\255\000\000\066\000\066\000\145\000\
\000\000\066\000\066\000\066\000\066\000\066\000\066\000\066\000\
\066\000\066\000\000\000\094\000\100\000\164\000\091\255\000\000\
\164\000\104\255\103\255\242\255\102\255\125\255\164\000\092\255\
\092\255\000\000\181\000\019\255\019\255\019\255\019\255\181\000\
\115\255\115\255\066\000\000\000\066\000\114\255\094\255\066\000\
\136\255\000\000\214\255\164\000\066\000\155\255\125\000\115\255\
\066\000\164\000\066\000\000\000\000\000\159\255\131\000\115\255\
\000\000\000\000"

let yyrindex = "\000\000\
\005\000\000\000\000\000\000\000\000\000\009\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\160\255\000\000\000\000\163\255\000\000\000\000\000\000\000\000\
\000\000\101\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\122\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\167\255\000\000\000\000\000\000\166\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\036\255\000\000\000\000\
\255\254\000\000\168\255\000\000\000\000\000\000\018\000\174\255\
\191\255\000\000\062\000\225\255\003\000\046\000\054\000\088\000\
\000\000\000\000\000\000\000\000\000\000\157\255\000\000\000\000\
\000\000\000\000\000\000\007\255\000\000\000\000\000\000\000\000\
\173\255\136\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\172\000\146\000\000\000\059\000\
\000\000\000\000\130\000\000\000\047\000\211\255\078\000\000\000\
\000\000"

let yytablesize = 467
let yytable = "\060\000\
\017\000\058\000\061\000\062\000\002\000\003\000\058\000\063\000\
\003\000\059\000\076\000\077\000\078\000\001\000\059\000\065\000\
\081\000\084\000\087\000\064\000\088\000\089\000\090\000\091\000\
\092\000\093\000\094\000\095\000\096\000\066\000\067\000\068\000\
\012\000\066\000\067\000\068\000\055\000\059\000\055\000\008\000\
\069\000\070\000\071\000\072\000\073\000\074\000\011\000\013\000\
\014\000\015\000\016\000\024\000\025\000\107\000\021\000\108\000\
\046\000\047\000\111\000\022\000\023\000\029\000\031\000\114\000\
\032\000\040\000\041\000\078\000\048\000\119\000\042\000\030\000\
\043\000\044\000\045\000\049\000\050\000\051\000\052\000\040\000\
\075\000\046\000\047\000\026\000\042\000\035\000\043\000\044\000\
\045\000\033\000\024\000\099\000\037\000\048\000\056\000\046\000\
\047\000\039\000\057\000\058\000\049\000\050\000\051\000\052\000\
\023\000\023\000\100\000\048\000\068\000\023\000\101\000\023\000\
\023\000\023\000\049\000\050\000\051\000\052\000\040\000\103\000\
\023\000\023\000\033\000\042\000\033\000\043\000\044\000\045\000\
\033\000\033\000\104\000\109\000\023\000\110\000\046\000\047\000\
\033\000\033\000\033\000\023\000\023\000\023\000\023\000\105\000\
\106\000\112\000\048\000\033\000\033\000\033\000\033\000\033\000\
\033\000\049\000\050\000\051\000\052\000\050\000\117\000\050\000\
\115\000\120\000\011\000\050\000\050\000\012\000\122\000\054\000\
\056\000\055\000\057\000\050\000\050\000\050\000\037\000\054\000\
\037\000\010\000\000\000\036\000\037\000\037\000\050\000\050\000\
\050\000\050\000\050\000\050\000\037\000\037\000\118\000\038\000\
\000\000\038\000\000\000\000\000\000\000\038\000\038\000\037\000\
\037\000\037\000\037\000\037\000\037\000\038\000\038\000\000\000\
\080\000\000\000\000\000\000\000\000\000\000\000\113\000\000\000\
\038\000\038\000\038\000\038\000\038\000\038\000\066\000\067\000\
\068\000\042\000\000\000\042\000\066\000\067\000\068\000\042\000\
\042\000\069\000\070\000\071\000\072\000\073\000\074\000\069\000\
\070\000\071\000\072\000\073\000\074\000\000\000\000\000\000\000\
\102\000\000\000\042\000\042\000\042\000\042\000\042\000\042\000\
\066\000\067\000\068\000\044\000\000\000\044\000\000\000\000\000\
\000\000\044\000\044\000\069\000\070\000\071\000\072\000\073\000\
\074\000\000\000\035\000\012\000\035\000\000\000\000\000\002\000\
\035\000\035\000\000\000\003\000\044\000\044\000\044\000\044\000\
\044\000\044\000\013\000\014\000\015\000\016\000\002\000\002\000\
\002\000\002\000\003\000\003\000\003\000\003\000\043\000\000\000\
\043\000\000\000\000\000\000\000\043\000\043\000\045\000\000\000\
\045\000\000\000\000\000\000\000\045\000\045\000\040\000\000\000\
\040\000\000\000\000\000\000\000\040\000\040\000\000\000\043\000\
\043\000\043\000\043\000\043\000\043\000\000\000\000\000\045\000\
\045\000\045\000\045\000\045\000\045\000\046\000\047\000\040\000\
\041\000\000\000\041\000\000\000\040\000\000\000\041\000\041\000\
\097\000\048\000\000\000\000\000\000\000\000\000\098\000\000\000\
\049\000\050\000\051\000\052\000\066\000\067\000\068\000\000\000\
\000\000\041\000\066\000\067\000\068\000\000\000\041\000\069\000\
\070\000\071\000\072\000\073\000\074\000\069\000\070\000\071\000\
\072\000\073\000\074\000\116\000\000\000\000\000\000\000\000\000\
\052\000\121\000\052\000\066\000\067\000\068\000\052\000\052\000\
\000\000\066\000\067\000\068\000\000\000\000\000\069\000\070\000\
\071\000\072\000\073\000\074\000\069\000\070\000\071\000\072\000\
\073\000\074\000\085\000\000\000\046\000\047\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\048\000\086\000\066\000\067\000\068\000\000\000\000\000\049\000\
\050\000\051\000\052\000\000\000\000\000\069\000\070\000\071\000\
\072\000\073\000\074\000\066\000\067\000\068\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\070\000\
\071\000\072\000\073\000"

let yycheck = "\045\000\
\000\000\003\001\048\000\002\001\000\000\014\001\008\001\006\001\
\000\000\003\001\056\000\057\000\058\000\001\000\008\001\001\001\
\062\000\063\000\064\000\018\001\066\000\067\000\068\000\069\000\
\070\000\071\000\072\000\073\000\074\000\015\001\016\001\017\001\
\019\001\015\001\016\001\017\001\001\001\001\001\003\001\002\001\
\026\001\027\001\028\001\029\001\030\001\031\001\041\001\034\001\
\035\001\036\001\037\001\001\001\002\001\099\000\003\001\101\000\
\020\001\021\001\104\000\040\001\001\001\040\001\008\001\109\000\
\004\001\004\001\005\001\113\000\032\001\115\000\009\001\003\001\
\011\001\012\001\013\001\039\001\040\001\041\001\042\001\004\001\
\005\001\020\001\021\001\025\000\009\001\040\001\011\001\012\001\
\013\001\031\000\001\001\001\001\034\000\032\001\002\001\020\001\
\021\001\040\001\002\001\002\001\039\001\040\001\041\001\042\001\
\004\001\005\001\003\001\032\001\017\001\009\001\008\001\011\001\
\012\001\013\001\039\001\040\001\041\001\042\001\004\001\018\001\
\020\001\021\001\001\001\009\001\003\001\011\001\012\001\013\001\
\007\001\008\001\006\001\018\001\032\001\040\001\020\001\021\001\
\015\001\016\001\017\001\039\001\040\001\041\001\042\001\097\000\
\098\000\010\001\032\001\026\001\027\001\028\001\029\001\030\001\
\031\001\039\001\040\001\041\001\042\001\001\001\112\000\003\001\
\006\001\003\001\003\001\007\001\008\001\003\001\120\000\001\001\
\003\001\040\000\003\001\015\001\016\001\017\001\001\001\003\001\
\003\001\006\000\255\255\034\000\007\001\008\001\026\001\027\001\
\028\001\029\001\030\001\031\001\015\001\016\001\113\000\001\001\
\255\255\003\001\255\255\255\255\255\255\007\001\008\001\026\001\
\027\001\028\001\029\001\030\001\031\001\015\001\016\001\255\255\
\001\001\255\255\255\255\255\255\255\255\255\255\001\001\255\255\
\026\001\027\001\028\001\029\001\030\001\031\001\015\001\016\001\
\017\001\001\001\255\255\003\001\015\001\016\001\017\001\007\001\
\008\001\026\001\027\001\028\001\029\001\030\001\031\001\026\001\
\027\001\028\001\029\001\030\001\031\001\255\255\255\255\255\255\
\007\001\255\255\026\001\027\001\028\001\029\001\030\001\031\001\
\015\001\016\001\017\001\001\001\255\255\003\001\255\255\255\255\
\255\255\007\001\008\001\026\001\027\001\028\001\029\001\030\001\
\031\001\255\255\001\001\019\001\003\001\255\255\255\255\019\001\
\007\001\008\001\255\255\019\001\026\001\027\001\028\001\029\001\
\030\001\031\001\034\001\035\001\036\001\037\001\034\001\035\001\
\036\001\037\001\034\001\035\001\036\001\037\001\001\001\255\255\
\003\001\255\255\255\255\255\255\007\001\008\001\001\001\255\255\
\003\001\255\255\255\255\255\255\007\001\008\001\001\001\255\255\
\003\001\255\255\255\255\255\255\007\001\008\001\255\255\026\001\
\027\001\028\001\029\001\030\001\031\001\255\255\255\255\026\001\
\027\001\028\001\029\001\030\001\031\001\020\001\021\001\026\001\
\001\001\255\255\003\001\255\255\031\001\255\255\007\001\008\001\
\003\001\032\001\255\255\255\255\255\255\255\255\003\001\255\255\
\039\001\040\001\041\001\042\001\015\001\016\001\017\001\255\255\
\255\255\026\001\015\001\016\001\017\001\255\255\031\001\026\001\
\027\001\028\001\029\001\030\001\031\001\026\001\027\001\028\001\
\029\001\030\001\031\001\007\001\255\255\255\255\255\255\255\255\
\001\001\007\001\003\001\015\001\016\001\017\001\007\001\008\001\
\255\255\015\001\016\001\017\001\255\255\255\255\026\001\027\001\
\028\001\029\001\030\001\031\001\026\001\027\001\028\001\029\001\
\030\001\031\001\018\001\255\255\020\001\021\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\032\001\033\001\015\001\016\001\017\001\255\255\255\255\039\001\
\040\001\041\001\042\001\255\255\255\255\026\001\027\001\028\001\
\029\001\030\001\031\001\015\001\016\001\017\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\027\001\
\028\001\029\001\030\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LBRACKET\000\
  RBRACKET\000\
  COMMA\000\
  IF\000\
  ELSE\000\
  WHILE\000\
  FOR\000\
  RETURN\000\
  INCLUDE\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  ASSIGN\000\
  BOOL\000\
  TRUE\000\
  FALSE\000\
  INCREMENT\000\
  DECREMENT\000\
  PLUSEQ\000\
  MINUSEQ\000\
  EQUAL\000\
  LESS\000\
  LESSEQ\000\
  GREAT\000\
  GREATEQ\000\
  UNEQUAL\000\
  NOT\000\
  NEW\000\
  INT\000\
  CHAR\000\
  VOID\000\
  STRING\000\
  FLOAT\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  STRINGLIT\000\
  NEWSTRINGLIT\000\
  CHAR_LITERAL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'includes) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 31 "parser.mly"
                        ( Program(_1,_2) )
# 365 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
                        ( [] )
# 371 "parser.ml"
               : 'includes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'include_list) in
    Obj.repr(
# 34 "parser.mly"
                  (List.rev _1)
# 378 "parser.ml"
               : 'includes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'include_decl) in
    Obj.repr(
# 37 "parser.mly"
                  ([_1])
# 385 "parser.ml"
               : 'include_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'include_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'include_decl) in
    Obj.repr(
# 38 "parser.mly"
                                (_2::_1)
# 393 "parser.ml"
               : 'include_list))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 41 "parser.mly"
                                            (Include(_3))
# 400 "parser.ml"
               : 'include_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parser.mly"
                     ( [], [] )
# 406 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 43 "parser.mly"
                 ( (_2 :: fst _1), snd _1 )
# 414 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 44 "parser.mly"
                 ( fst _1, (_2 :: snd _1) )
# 422 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 47 "parser.mly"
                                                                              ( { typ = _1; fname = _2; formals = _4; locals = List.rev _7; body = List.rev _8 } )
# 433 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser.mly"
                          ( [] )
# 439 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 51 "parser.mly"
                         ( List.rev _1 )
# 446 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "parser.mly"
                           ( [(_1,_2)] )
# 454 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "parser.mly"
                                             ( (_3,_4) :: _1 )
# 463 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
         ( Int )
# 469 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
          ( Void )
# 475 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
          ( Bool )
# 481 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
            ( String )
# 487 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
          (Char)
# 493 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
                        ([])
# 499 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 63 "parser.mly"
                      (_2 :: _1)
# 507 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 65 "parser.mly"
                          ( (_1,_2) )
# 515 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
                         ( [] )
# 521 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 69 "parser.mly"
                          ( _2 :: _1 )
# 529 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 72 "parser.mly"
                ( Expr _1 )
# 536 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "parser.mly"
                  (Return Noexpr )
# 542 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 74 "parser.mly"
                       (Return _2 )
# 549 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 75 "parser.mly"
                              ( Block(List.rev _2))
# 556 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 76 "parser.mly"
                                           ( If(_3, _5, _7) )
# 565 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 77 "parser.mly"
                                                              (For(_3,_5,_7,_9))
# 575 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 78 "parser.mly"
                                    (While(_3,_5))
# 583 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 80 "parser.mly"
              ( Literal(_1) )
# 590 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 81 "parser.mly"
                ( StringLit(_1) )
# 597 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 82 "parser.mly"
                   ( NewstringLit(_1) )
# 604 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                            ( Assign(_1, _3) )
# 612 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 84 "parser.mly"
                   (Char_Lit(_1))
# 619 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                     ( Binop(_1, Plus, _3) )
# 627 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                      ( Binop(_1, Minus, _3) )
# 635 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
                      ( Binop(_1, Times, _3) )
# 643 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 88 "parser.mly"
                      ( Binop(_1, Equal, _3) )
# 651 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 89 "parser.mly"
                        (Binop(_1, Unequal, _3))
# 659 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 90 "parser.mly"
                     ( Binop(_1, Less, _3) )
# 667 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 91 "parser.mly"
                      ( Binop(_1, Great, _3) )
# 675 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
                       ( Binop(_1, LessEQ, _3) )
# 683 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 93 "parser.mly"
                        ( Binop(_1, GreatEQ, _3) )
# 691 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 94 "parser.mly"
               ( Unop(Not, _2) )
# 698 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "parser.mly"
           ( BoolLit(true))
# 704 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 96 "parser.mly"
            ( BoolLit(false))
# 710 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actual_opt) in
    Obj.repr(
# 97 "parser.mly"
                                         ( Call(_1, _3) )
# 718 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                                       ( Array(_1,_3))
# 726 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                                                  (Init(_1,_5))
# 734 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                                                   (Arrayassign(_1,_3,_6))
# 743 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                                                                      (Arrayaccess(_1,_5,_7))
# 752 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
                        ( Noexpr )
# 758 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
               (_1)
# 765 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
                          ( [] )
# 771 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actual_list) in
    Obj.repr(
# 107 "parser.mly"
                        ( List.rev _1 )
# 778 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                  ( [_1] )
# 785 "parser.ml"
               : 'actual_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actual_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                                    ( _3 :: _1 )
# 793 "parser.ml"
               : 'actual_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
