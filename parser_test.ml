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
  | AFTER
  | BEFORE
  | OPEN
  | CLOSE
  | SCAN
  | COPY
  | COUNT
  | READLINE
  | WRITE
  | REPLACE
  | DELETE
  | ADD
  | MINUS
  | TIMES
  | ASSIGN
  | INCREMENT
  | DECREMENT
  | PLUSEQ
  | MINUSEQ
  | TIMESEQ
  | DIVIDEEQ
  | EQUAL
  | UNEQUAL
  | LESS
  | LESSEQ
  | GREAT
  | GREATEQ
  | AND
  | OR
  | MATCH
  | NOTMATCH
  | CONDITION
  | FILE
  | INT
  | FLOAT of (float)
  | CHAR
  | STRING of (string)
  | VOID
  | TRUE
  | FALSE
  | LITERAL of (int)
  | VARIABLE of (int)
  | EOF

open Parsing;;
let _ = parse_error;;
# 1 "parser_test.mly"
 open Ast_test 
# 64 "parser_test.ml"
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
  270 (* AFTER *);
  271 (* BEFORE *);
  272 (* OPEN *);
  273 (* CLOSE *);
  274 (* SCAN *);
  275 (* COPY *);
  276 (* COUNT *);
  277 (* READLINE *);
  278 (* WRITE *);
  279 (* REPLACE *);
  280 (* DELETE *);
  281 (* ADD *);
  282 (* MINUS *);
  283 (* TIMES *);
  284 (* ASSIGN *);
  285 (* INCREMENT *);
  286 (* DECREMENT *);
  287 (* PLUSEQ *);
  288 (* MINUSEQ *);
  289 (* TIMESEQ *);
  290 (* DIVIDEEQ *);
  291 (* EQUAL *);
  292 (* UNEQUAL *);
  293 (* LESS *);
  294 (* LESSEQ *);
  295 (* GREAT *);
  296 (* GREATEQ *);
  297 (* AND *);
  298 (* OR *);
  299 (* MATCH *);
  300 (* NOTMATCH *);
  301 (* CONDITION *);
  302 (* FILE *);
  303 (* INT *);
  305 (* CHAR *);
  307 (* VOID *);
  308 (* TRUE *);
  309 (* FALSE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  304 (* FLOAT *);
  306 (* STRING *);
  310 (* LITERAL *);
  311 (* VARIABLE *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\007\000\007\000\003\000\005\000\005\000\005\000\005\000\
\008\000\008\000\010\000\010\000\010\000\010\000\010\000\010\000\
\010\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\012\000\012\000\013\000\
\013\000\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\000\000\002\000\003\000\001\000\001\000\001\000\001\000\
\000\000\002\000\002\000\002\000\003\000\003\000\007\000\009\000\
\005\000\001\000\001\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\002\000\000\000\001\000\000\000\
\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\044\000\000\000\013\000\015\000\016\000\014\000\
\001\000\003\000\004\000\000\000\000\000\012\000\000\000\000\000\
\000\000\000\000\008\000\000\000\000\000\010\000\000\000\000\000\
\009\000\011\000\000\000\000\000\000\000\017\000\005\000\000\000\
\000\000\000\000\000\000\027\000\000\000\026\000\000\000\018\000\
\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\
\000\000\019\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\022\000\000\000\000\000\000\000\000\000\021\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\025\000\000\000\000\000\
\000\000\023\000\000\000\000\000\024\000"

let yydgoto = "\002\000\
\003\000\004\000\010\000\011\000\012\000\017\000\024\000\028\000\
\018\000\040\000\041\000\063\000\000\000\000\000"

let yysindex = "\004\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\218\254\061\255\000\000\026\255\219\254\
\015\255\029\255\000\000\047\255\026\255\000\000\006\255\026\255\
\000\000\000\000\017\255\254\254\071\255\000\000\000\000\082\255\
\087\255\090\255\255\254\000\000\079\255\000\000\247\254\000\000\
\078\255\011\255\247\254\247\254\247\254\000\000\101\255\247\254\
\068\255\000\000\247\254\247\254\247\254\247\254\247\254\247\254\
\247\254\247\254\000\000\198\255\204\255\220\255\105\255\000\000\
\220\255\220\255\250\254\068\255\224\255\001\255\001\255\001\255\
\001\255\021\255\021\255\247\254\099\255\000\000\107\255\021\255\
\247\254\000\000\108\255\021\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\109\255\000\000\
\000\000\111\255\000\000\000\000\000\000\000\000\000\000\031\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\119\255\000\000\000\000\000\000\
\122\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\028\255\000\000\000\000\
\065\255\080\255\149\255\128\255\003\255\134\255\155\255\175\255\
\182\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\118\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\086\000\000\000\249\255\000\000\000\000\092\000\
\000\000\236\255\043\000\049\000\000\000\000\000"

let yytablesize = 308
let yytable = "\046\000\
\009\000\030\000\031\000\032\000\001\000\032\000\032\000\016\000\
\033\000\034\000\035\000\013\000\019\000\023\000\030\000\059\000\
\027\000\020\000\051\000\032\000\053\000\033\000\034\000\035\000\
\030\000\051\000\052\000\053\000\039\000\032\000\039\000\033\000\
\034\000\035\000\017\000\017\000\021\000\032\000\036\000\017\000\
\037\000\017\000\017\000\017\000\038\000\036\000\036\000\037\000\
\037\000\039\000\022\000\038\000\038\000\077\000\078\000\025\000\
\039\000\039\000\036\000\082\000\037\000\014\000\015\000\085\000\
\038\000\031\000\029\000\031\000\036\000\039\000\037\000\014\000\
\005\000\006\000\038\000\007\000\008\000\047\000\050\000\039\000\
\028\000\049\000\028\000\043\000\017\000\060\000\061\000\062\000\
\044\000\017\000\065\000\045\000\051\000\066\000\067\000\068\000\
\069\000\070\000\071\000\072\000\073\000\064\000\051\000\052\000\
\053\000\076\000\048\000\081\000\080\000\026\000\084\000\006\000\
\054\000\007\000\055\000\056\000\057\000\058\000\079\000\038\000\
\038\000\042\000\037\000\062\000\037\000\051\000\052\000\053\000\
\030\000\083\000\030\000\051\000\052\000\053\000\033\000\054\000\
\033\000\055\000\056\000\057\000\058\000\054\000\000\000\055\000\
\056\000\057\000\058\000\037\000\037\000\029\000\000\000\029\000\
\000\000\030\000\030\000\035\000\037\000\035\000\037\000\037\000\
\037\000\037\000\030\000\000\000\030\000\030\000\030\000\030\000\
\033\000\000\000\033\000\033\000\033\000\033\000\029\000\034\000\
\000\000\034\000\000\000\000\000\000\000\000\000\036\000\029\000\
\036\000\029\000\029\000\029\000\029\000\035\000\000\000\035\000\
\035\000\035\000\035\000\000\000\000\000\000\000\000\000\000\000\
\074\000\000\000\000\000\000\000\000\000\000\000\075\000\000\000\
\000\000\034\000\000\000\034\000\034\000\034\000\034\000\000\000\
\036\000\000\000\036\000\036\000\036\000\036\000\051\000\052\000\
\053\000\000\000\000\000\000\000\051\000\052\000\053\000\000\000\
\054\000\000\000\055\000\056\000\057\000\058\000\054\000\000\000\
\055\000\056\000\057\000\058\000\051\000\052\000\053\000\000\000\
\051\000\052\000\053\000\000\000\000\000\000\000\054\000\000\000\
\055\000\056\000\057\000\058\000\055\000\056\000\057\000\058\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\
\006\000\000\000\007\000\008\000"

let yycheck = "\001\001\
\000\000\004\001\005\001\001\001\001\000\003\001\009\001\015\000\
\011\001\012\001\013\001\050\001\050\001\021\000\004\001\005\001\
\024\000\003\001\025\001\009\001\027\001\011\001\012\001\013\001\
\004\001\025\001\026\001\027\001\001\001\009\001\003\001\011\001\
\012\001\013\001\004\001\005\001\008\001\035\001\048\001\009\001\
\050\001\011\001\012\001\013\001\054\001\048\001\048\001\050\001\
\050\001\059\001\004\001\054\001\054\001\074\000\075\000\050\001\
\059\001\059\001\048\001\080\000\050\001\001\001\002\001\084\000\
\054\001\001\001\050\001\003\001\048\001\059\001\050\001\001\001\
\047\001\048\001\054\001\050\001\051\001\035\000\001\001\059\001\
\001\001\039\000\003\001\002\001\054\001\043\000\044\000\045\000\
\002\001\059\001\048\000\002\001\025\001\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\001\001\025\001\026\001\
\027\001\001\001\028\001\001\001\010\001\024\000\003\001\003\001\
\035\001\003\001\037\001\038\001\039\001\040\001\076\000\001\001\
\003\001\030\000\001\001\081\000\003\001\025\001\026\001\027\001\
\001\001\081\000\003\001\025\001\026\001\027\001\001\001\035\001\
\003\001\037\001\038\001\039\001\040\001\035\001\255\255\037\001\
\038\001\039\001\040\001\026\001\027\001\001\001\255\255\003\001\
\255\255\026\001\027\001\001\001\035\001\003\001\037\001\038\001\
\039\001\040\001\035\001\255\255\037\001\038\001\039\001\040\001\
\035\001\255\255\037\001\038\001\039\001\040\001\026\001\001\001\
\255\255\003\001\255\255\255\255\255\255\255\255\001\001\035\001\
\003\001\037\001\038\001\039\001\040\001\035\001\255\255\037\001\
\038\001\039\001\040\001\255\255\255\255\255\255\255\255\255\255\
\003\001\255\255\255\255\255\255\255\255\255\255\003\001\255\255\
\255\255\035\001\255\255\037\001\038\001\039\001\040\001\255\255\
\035\001\255\255\037\001\038\001\039\001\040\001\025\001\026\001\
\027\001\255\255\255\255\255\255\025\001\026\001\027\001\255\255\
\035\001\255\255\037\001\038\001\039\001\040\001\035\001\255\255\
\037\001\038\001\039\001\040\001\025\001\026\001\027\001\255\255\
\025\001\026\001\027\001\255\255\255\255\255\255\035\001\255\255\
\037\001\038\001\039\001\040\001\037\001\038\001\039\001\040\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\047\001\
\048\001\255\255\050\001\051\001"

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
  AFTER\000\
  BEFORE\000\
  OPEN\000\
  CLOSE\000\
  SCAN\000\
  COPY\000\
  COUNT\000\
  READLINE\000\
  WRITE\000\
  REPLACE\000\
  DELETE\000\
  ADD\000\
  MINUS\000\
  TIMES\000\
  ASSIGN\000\
  INCREMENT\000\
  DECREMENT\000\
  PLUSEQ\000\
  MINUSEQ\000\
  TIMESEQ\000\
  DIVIDEEQ\000\
  EQUAL\000\
  UNEQUAL\000\
  LESS\000\
  LESSEQ\000\
  GREAT\000\
  GREATEQ\000\
  AND\000\
  OR\000\
  MATCH\000\
  NOTMATCH\000\
  CONDITION\000\
  FILE\000\
  INT\000\
  CHAR\000\
  VOID\000\
  TRUE\000\
  FALSE\000\
  EOF\000\
  "

let yynames_block = "\
  FLOAT\000\
  STRING\000\
  LITERAL\000\
  VARIABLE\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 35 "parser_test.mly"
                    ( _1 )
# 342 "parser_test.ml"
               : Ast_test.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser_test.mly"
                     ( [], [] )
# 348 "parser_test.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser_test.mly"
                 ( (_2 :: fst _1), snd _1 )
# 356 "parser_test.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 39 "parser_test.mly"
                 ( fst _1, (_2 :: snd _1) )
# 364 "parser_test.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 42 "parser_test.mly"
                                                                           ( { typ = _1; fname = _2; formals = _4; locals = List.rev _7; body = List.rev _8 } )
# 375 "parser_test.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser_test.mly"
                           ( [] )
# 381 "parser_test.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 45 "parser_test.mly"
                         ( List.rev _1 )
# 388 "parser_test.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser_test.mly"
                        ( [(_1,_2)] )
# 396 "parser_test.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser_test.mly"
                                          ( (_3,_4) :: _1 )
# 405 "parser_test.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser_test.mly"
                        ([])
# 411 "parser_test.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 51 "parser_test.mly"
                      (_2 :: _1)
# 419 "parser_test.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 53 "parser_test.mly"
                       ( (_1,_2) )
# 427 "parser_test.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser_test.mly"
         ( Int )
# 433 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser_test.mly"
          ( Void )
# 439 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 57 "parser_test.mly"
           ( Float )
# 446 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 58 "parser_test.mly"
            ( String )
# 453 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser_test.mly"
                         ( [] )
# 459 "parser_test.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 61 "parser_test.mly"
                          ( _2 :: _1 )
# 467 "parser_test.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 64 "parser_test.mly"
                ( Expr _1 )
# 474 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser_test.mly"
                  (Return Noexpr )
# 480 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 66 "parser_test.mly"
                       (Return _2 )
# 487 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 67 "parser_test.mly"
                              ( Block(List.rev _2))
# 494 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 68 "parser_test.mly"
                                           ( If(_3, _5, _7) )
# 503 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 69 "parser_test.mly"
                                                              (For(_3,_5,_7,_9))
# 513 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 70 "parser_test.mly"
                                    (While(_3,_5))
# 521 "parser_test.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 73 "parser_test.mly"
            ( Literal(_1) )
# 528 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 74 "parser_test.mly"
          ( FloatLit(_1) )
# 535 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 75 "parser_test.mly"
                  ( Binop(_1, Add, _3) )
# 543 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 76 "parser_test.mly"
                    ( Binop(_1, Minus, _3) )
# 551 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 77 "parser_test.mly"
                    ( Binop(_1, Times, _3) )
# 559 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "parser_test.mly"
                       ( Assign(_1, _3) )
# 567 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 79 "parser_test.mly"
                    ( Binop(_1, Equal, _3) )
# 575 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 80 "parser_test.mly"
                   ( Binop(_1, Less, _3) )
# 583 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 81 "parser_test.mly"
                    ( Binop(_1, Great, _3) )
# 591 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "parser_test.mly"
                     ( Binop(_1, LessEQ, _3) )
# 599 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser_test.mly"
                      ( Binop(_1, GreatEQ, _3) )
# 607 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser_test.mly"
             ( Unop(Not, _2) )
# 614 "parser_test.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parser_test.mly"
                        ( Noexpr )
# 620 "parser_test.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser_test.mly"
               (_1)
# 627 "parser_test.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parser_test.mly"
                           ( [] )
# 633 "parser_test.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 90 "parser_test.mly"
                          ( List.rev _1 )
# 640 "parser_test.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser_test.mly"
                   ( [_1] )
# 647 "parser_test.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 93 "parser_test.mly"
                                      ( _3 :: _1 )
# 655 "parser_test.ml"
               : 'actuals_list))
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast_test.program)
