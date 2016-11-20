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
  | AND
  | OR
  | MATCH
  | CONDITION
  | NOT
  | FILE
  | INT
  | CHAR
  | VOID
  | INDEX
  | SUBSTR
  | TOUPPER
  | TOLOWER
  | LITERAL of (int)
  | VARIABLE of (int)
  | FLOAT of (float)
  | FLITERAL of (float)
  | STRING of (string)
  | SEARCHSTRING of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast_test 
# 68 "parser.ml"
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
  281 (* PLUS *);
  282 (* MINUS *);
  283 (* TIMES *);
  284 (* ASSIGN *);
  285 (* BOOL *);
  286 (* TRUE *);
  287 (* FALSE *);
  288 (* INCREMENT *);
  289 (* DECREMENT *);
  290 (* PLUSEQ *);
  291 (* MINUSEQ *);
  292 (* EQUAL *);
  293 (* LESS *);
  294 (* LESSEQ *);
  295 (* GREAT *);
  296 (* GREATEQ *);
  297 (* AND *);
  298 (* OR *);
  299 (* MATCH *);
  300 (* CONDITION *);
  301 (* NOT *);
  302 (* FILE *);
  303 (* INT *);
  304 (* CHAR *);
  305 (* VOID *);
  306 (* INDEX *);
  307 (* SUBSTR *);
  308 (* TOUPPER *);
  309 (* TOLOWER *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  310 (* LITERAL *);
  311 (* VARIABLE *);
  312 (* FLOAT *);
  313 (* FLITERAL *);
  314 (* STRING *);
  315 (* SEARCHSTRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\007\000\007\000\003\000\
\008\000\008\000\010\000\010\000\010\000\010\000\010\000\010\000\
\010\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\012\000\012\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\000\000\002\000\003\000\
\000\000\002\000\002\000\002\000\003\000\003\000\007\000\009\000\
\005\000\001\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\002\000\001\000\001\000\
\001\000\000\000\001\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\044\000\000\000\013\000\010\000\011\000\012\000\
\001\000\003\000\004\000\000\000\000\000\016\000\000\000\000\000\
\000\000\000\000\008\000\000\000\000\000\014\000\000\000\000\000\
\009\000\015\000\000\000\000\000\000\000\017\000\005\000\000\000\
\000\000\000\000\000\000\040\000\041\000\000\000\026\000\027\000\
\000\000\039\000\018\000\000\000\000\000\000\000\000\000\000\000\
\020\000\000\000\038\000\000\000\019\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\022\000\000\000\000\000\
\000\000\000\000\021\000\000\000\000\000\000\000\032\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\025\000\000\000\000\000\000\000\023\000\000\000\000\000\024\000"

let yydgoto = "\002\000\
\003\000\004\000\010\000\011\000\012\000\017\000\024\000\028\000\
\018\000\043\000\044\000\066\000"

let yysindex = "\002\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\219\254\010\255\000\000\232\254\220\254\
\031\255\034\255\000\000\039\255\232\254\000\000\249\254\232\254\
\000\000\000\000\253\254\005\255\060\255\000\000\000\000\063\255\
\064\255\065\255\255\254\000\000\000\000\083\255\000\000\000\000\
\040\255\000\000\000\000\158\255\015\255\083\255\083\255\083\255\
\000\000\163\255\000\000\083\255\000\000\083\255\083\255\083\255\
\083\255\083\255\083\255\083\255\083\255\000\000\235\255\251\255\
\068\255\079\255\000\000\068\255\055\255\055\255\000\000\242\255\
\237\254\237\254\237\254\237\254\072\255\072\255\083\255\076\255\
\000\000\179\255\072\255\083\255\000\000\096\255\072\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\097\255\000\000\
\000\000\109\255\000\000\000\000\000\000\000\000\000\000\066\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\135\255\000\000\000\000\000\000\000\000\000\000\000\000\115\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\030\255\000\000\000\000\046\255\206\255\211\255\000\000\012\255\
\001\255\051\255\190\255\219\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\118\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\094\000\000\000\077\000\000\000\000\000\092\000\
\000\000\032\000\097\000\043\000"

let yytablesize = 313
let yytable = "\049\000\
\009\000\034\000\001\000\034\000\005\000\054\000\055\000\056\000\
\030\000\031\000\014\000\015\000\033\000\032\000\033\000\033\000\
\034\000\035\000\030\000\062\000\013\000\019\000\006\000\032\000\
\007\000\033\000\034\000\035\000\036\000\037\000\043\000\008\000\
\043\000\020\000\036\000\037\000\034\000\034\000\034\000\034\000\
\034\000\021\000\022\000\038\000\036\000\037\000\029\000\033\000\
\029\000\038\000\025\000\036\000\039\000\036\000\029\000\040\000\
\041\000\042\000\039\000\038\000\014\000\040\000\041\000\042\000\
\046\000\047\000\048\000\052\000\039\000\017\000\017\000\040\000\
\041\000\042\000\017\000\030\000\017\000\017\000\017\000\079\000\
\032\000\056\000\033\000\034\000\035\000\083\000\036\000\036\000\
\036\000\036\000\036\000\016\000\054\000\055\000\056\000\017\000\
\017\000\023\000\087\000\006\000\027\000\036\000\037\000\057\000\
\058\000\059\000\060\000\061\000\080\000\081\000\017\000\007\000\
\036\000\037\000\085\000\042\000\038\000\026\000\088\000\017\000\
\042\000\045\000\017\000\017\000\017\000\039\000\086\000\038\000\
\040\000\041\000\042\000\050\000\000\000\000\000\051\000\028\000\
\039\000\028\000\000\000\040\000\041\000\042\000\063\000\064\000\
\065\000\000\000\000\000\000\000\068\000\000\000\069\000\070\000\
\071\000\072\000\073\000\074\000\075\000\076\000\053\000\028\000\
\028\000\028\000\000\000\067\000\000\000\000\000\000\000\000\000\
\000\000\000\000\028\000\028\000\028\000\028\000\028\000\082\000\
\000\000\000\000\000\000\084\000\065\000\000\000\054\000\055\000\
\056\000\000\000\000\000\054\000\055\000\056\000\035\000\000\000\
\035\000\057\000\058\000\059\000\060\000\061\000\057\000\058\000\
\059\000\060\000\061\000\054\000\055\000\056\000\030\000\000\000\
\030\000\000\000\000\000\031\000\000\000\031\000\057\000\058\000\
\059\000\060\000\061\000\037\000\000\000\037\000\000\000\000\000\
\000\000\035\000\035\000\035\000\035\000\035\000\030\000\030\000\
\000\000\000\000\000\000\031\000\031\000\077\000\000\000\000\000\
\000\000\030\000\030\000\030\000\030\000\030\000\031\000\031\000\
\031\000\031\000\031\000\000\000\000\000\078\000\037\000\037\000\
\037\000\037\000\037\000\054\000\055\000\056\000\000\000\000\000\
\000\000\000\000\054\000\055\000\056\000\000\000\057\000\058\000\
\059\000\060\000\061\000\054\000\055\000\056\000\058\000\059\000\
\060\000\061\000\000\000\000\000\000\000\005\000\057\000\058\000\
\059\000\060\000\061\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\
\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\
\008\000"

let yycheck = "\001\001\
\000\000\001\001\001\000\003\001\029\001\025\001\026\001\027\001\
\004\001\005\001\001\001\002\001\001\001\009\001\003\001\011\001\
\012\001\013\001\004\001\005\001\058\001\058\001\047\001\009\001\
\049\001\011\001\012\001\013\001\030\001\031\001\001\001\056\001\
\003\001\003\001\030\001\031\001\036\001\037\001\038\001\039\001\
\040\001\008\001\004\001\045\001\030\001\031\001\001\001\036\001\
\003\001\045\001\058\001\001\001\054\001\003\001\058\001\057\001\
\058\001\059\001\054\001\045\001\001\001\057\001\058\001\059\001\
\002\001\002\001\002\001\028\001\054\001\004\001\005\001\057\001\
\058\001\059\001\009\001\004\001\011\001\012\001\013\001\001\001\
\009\001\027\001\011\001\012\001\013\001\010\001\036\001\037\001\
\038\001\039\001\040\001\015\000\025\001\026\001\027\001\030\001\
\031\001\021\000\003\001\003\001\024\000\030\001\031\001\036\001\
\037\001\038\001\039\001\040\001\077\000\078\000\045\001\003\001\
\030\001\031\001\083\000\001\001\045\001\024\000\087\000\054\001\
\003\001\030\000\057\001\058\001\059\001\054\001\084\000\045\001\
\057\001\058\001\059\001\035\000\255\255\255\255\038\000\001\001\
\054\001\003\001\255\255\057\001\058\001\059\001\046\000\047\000\
\048\000\255\255\255\255\255\255\052\000\255\255\054\000\055\000\
\056\000\057\000\058\000\059\000\060\000\061\000\001\001\025\001\
\026\001\027\001\255\255\001\001\255\255\255\255\255\255\255\255\
\255\255\255\255\036\001\037\001\038\001\039\001\040\001\079\000\
\255\255\255\255\255\255\001\001\084\000\255\255\025\001\026\001\
\027\001\255\255\255\255\025\001\026\001\027\001\001\001\255\255\
\003\001\036\001\037\001\038\001\039\001\040\001\036\001\037\001\
\038\001\039\001\040\001\025\001\026\001\027\001\001\001\255\255\
\003\001\255\255\255\255\001\001\255\255\003\001\036\001\037\001\
\038\001\039\001\040\001\001\001\255\255\003\001\255\255\255\255\
\255\255\036\001\037\001\038\001\039\001\040\001\025\001\026\001\
\255\255\255\255\255\255\025\001\026\001\003\001\255\255\255\255\
\255\255\036\001\037\001\038\001\039\001\040\001\036\001\037\001\
\038\001\039\001\040\001\255\255\255\255\003\001\036\001\037\001\
\038\001\039\001\040\001\025\001\026\001\027\001\255\255\255\255\
\255\255\255\255\025\001\026\001\027\001\255\255\036\001\037\001\
\038\001\039\001\040\001\025\001\026\001\027\001\037\001\038\001\
\039\001\040\001\255\255\255\255\255\255\029\001\036\001\037\001\
\038\001\039\001\040\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\047\001\
\255\255\049\001\255\255\255\255\255\255\255\255\255\255\255\255\
\056\001"

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
  AND\000\
  OR\000\
  MATCH\000\
  CONDITION\000\
  NOT\000\
  FILE\000\
  INT\000\
  CHAR\000\
  VOID\000\
  INDEX\000\
  SUBSTR\000\
  TOUPPER\000\
  TOLOWER\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  VARIABLE\000\
  FLOAT\000\
  FLITERAL\000\
  STRING\000\
  SEARCHSTRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 35 "parser.mly"
                    ( _1 )
# 356 "parser.ml"
               : Ast_test.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                     ( [], [] )
# 362 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser.mly"
                 ( (_2 :: fst _1), snd _1 )
# 370 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 39 "parser.mly"
                 ( fst _1, (_2 :: snd _1) )
# 378 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 42 "parser.mly"
                                                                           ( { typ = _1; fname = _2; formals = _4; locals = List.rev _7; body = List.rev _8 } )
# 389 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
                           ( [] )
# 395 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 45 "parser.mly"
                         ( List.rev _1 )
# 402 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
                        ( [(_1,_2)] )
# 410 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
                                          ( (_3,_4) :: _1 )
# 419 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
         ( Int )
# 425 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
          ( Void )
# 431 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 53 "parser.mly"
           ( Float )
# 438 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
          ( Bool )
# 444 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
                        ([])
# 450 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 57 "parser.mly"
                      (_2 :: _1)
# 458 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 59 "parser.mly"
                       ( (_1,_2) )
# 466 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
                         ( [] )
# 472 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 63 "parser.mly"
                          ( _2 :: _1 )
# 480 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 66 "parser.mly"
                ( Expr _1 )
# 487 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
                  (Return Noexpr )
# 493 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 68 "parser.mly"
                       (Return _2 )
# 500 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 69 "parser.mly"
                              ( Block(List.rev _2))
# 507 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 70 "parser.mly"
                                           ( If(_3, _5, _7) )
# 516 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 71 "parser.mly"
                                                              (For(_3,_5,_7,_9))
# 526 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 72 "parser.mly"
                                    (While(_3,_5))
# 534 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 74 "parser.mly"
              ( Literal(_1) )
# 541 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 75 "parser.mly"
               ( FloatLit(_1) )
# 548 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
             ( StringLit(_1) )
# 555 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 77 "parser.mly"
                         ( Assign(_1, _3) )
# 563 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "parser.mly"
                     ( Binop(_1, Plus, _3) )
# 571 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 79 "parser.mly"
                      ( Binop(_1, Minus, _3) )
# 579 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
                      ( Binop(_1, Times, _3) )
# 587 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 81 "parser.mly"
                      ( Binop(_1, Equal, _3) )
# 595 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                     ( Binop(_1, Less, _3) )
# 603 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                      ( Binop(_1, Great, _3) )
# 611 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                       ( Binop(_1, LessEQ, _3) )
# 619 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                        ( Binop(_1, GreatEQ, _3) )
# 627 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
               ( Unop(Not, _2) )
# 634 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 87 "parser.mly"
                   ( Searchstring(_1) )
# 641 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "parser.mly"
           ( BoolLit(true))
# 647 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parser.mly"
            ( BoolLit(false))
# 653 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "parser.mly"
                        ( Noexpr )
# 659 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
               (_1)
# 666 "parser.ml"
               : 'expr_opt))
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
