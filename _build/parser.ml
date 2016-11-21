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
 open Ast 
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
\009\000\005\000\005\000\005\000\005\000\005\000\007\000\007\000\
\003\000\008\000\008\000\010\000\010\000\010\000\010\000\010\000\
\010\000\010\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\012\000\012\000\013\000\013\000\014\000\
\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\000\000\002\000\
\003\000\000\000\002\000\002\000\002\000\003\000\003\000\007\000\
\009\000\005\000\001\000\001\000\001\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\002\000\001\000\
\001\000\001\000\004\000\000\000\001\000\000\000\001\000\001\000\
\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\050\000\000\000\013\000\010\000\011\000\012\000\
\014\000\001\000\003\000\004\000\000\000\000\000\017\000\000\000\
\000\000\000\000\000\000\008\000\000\000\000\000\015\000\000\000\
\000\000\009\000\016\000\000\000\000\000\000\000\018\000\005\000\
\000\000\000\000\000\000\000\000\041\000\042\000\000\000\027\000\
\028\000\000\000\040\000\019\000\000\000\000\000\000\000\000\000\
\000\000\021\000\000\000\039\000\000\000\000\000\020\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\
\000\000\000\000\000\000\000\000\022\000\000\000\000\000\000\000\
\000\000\000\000\000\000\033\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\043\000\000\000\000\000\026\000\
\000\000\000\000\000\000\000\000\024\000\000\000\000\000\025\000"

let yydgoto = "\002\000\
\003\000\004\000\011\000\012\000\013\000\018\000\025\000\029\000\
\019\000\044\000\045\000\068\000\071\000\072\000"

let yysindex = "\014\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\222\254\073\255\000\000\056\255\
\231\254\042\255\040\255\000\000\048\255\056\255\000\000\253\254\
\056\255\000\000\000\000\013\255\038\255\075\255\000\000\000\000\
\076\255\082\255\084\255\255\254\000\000\000\000\233\255\000\000\
\000\000\000\255\000\000\000\000\196\255\068\255\233\255\233\255\
\233\255\000\000\214\255\000\000\233\255\233\255\000\000\233\255\
\233\255\233\255\233\255\233\255\233\255\233\255\233\255\000\000\
\244\255\035\000\239\254\093\255\000\000\239\254\097\255\094\255\
\239\254\077\255\077\255\000\000\039\000\236\254\236\254\236\254\
\236\254\078\255\078\255\233\255\000\000\233\255\100\255\000\000\
\219\255\239\254\078\255\233\255\000\000\104\255\078\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\108\255\
\000\000\000\000\112\255\000\000\000\000\000\000\000\000\000\000\
\129\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\142\255\000\000\000\000\000\000\000\000\000\000\000\000\
\115\255\000\000\000\000\000\000\117\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\064\255\000\000\000\000\085\255\000\000\118\255\
\058\255\169\255\188\255\000\000\010\255\116\255\163\255\003\000\
\015\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\098\255\000\000\125\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\093\000\000\000\038\000\000\000\000\000\098\000\
\000\000\177\255\234\255\047\000\000\000\000\000"

let yytablesize = 335
let yytable = "\050\000\
\010\000\053\000\087\000\088\000\056\000\057\000\058\000\056\000\
\057\000\058\000\034\000\093\000\034\000\051\000\001\000\096\000\
\052\000\034\000\059\000\060\000\061\000\062\000\063\000\014\000\
\065\000\066\000\067\000\054\000\037\000\038\000\070\000\073\000\
\020\000\074\000\075\000\076\000\077\000\078\000\079\000\080\000\
\081\000\031\000\032\000\039\000\021\000\034\000\033\000\022\000\
\034\000\035\000\036\000\023\000\040\000\017\000\026\000\041\000\
\042\000\043\000\030\000\024\000\030\000\089\000\028\000\090\000\
\045\000\030\000\045\000\037\000\038\000\067\000\030\000\031\000\
\064\000\015\000\016\000\015\000\033\000\047\000\034\000\035\000\
\036\000\031\000\039\000\048\000\005\000\049\000\033\000\048\000\
\034\000\035\000\036\000\040\000\048\000\084\000\041\000\042\000\
\043\000\037\000\038\000\085\000\049\000\086\000\006\000\058\000\
\007\000\049\000\095\000\037\000\038\000\091\000\006\000\008\000\
\039\000\009\000\007\000\044\000\035\000\027\000\035\000\046\000\
\047\000\040\000\039\000\035\000\041\000\042\000\043\000\044\000\
\046\000\000\000\000\000\040\000\018\000\018\000\041\000\042\000\
\043\000\018\000\094\000\018\000\018\000\018\000\029\000\000\000\
\029\000\000\000\000\000\000\000\000\000\029\000\000\000\035\000\
\035\000\035\000\035\000\035\000\000\000\000\000\018\000\018\000\
\000\000\000\000\000\000\037\000\000\000\037\000\029\000\029\000\
\029\000\031\000\037\000\031\000\000\000\018\000\000\000\000\000\
\031\000\029\000\029\000\029\000\029\000\029\000\018\000\000\000\
\000\000\018\000\000\000\018\000\032\000\000\000\032\000\000\000\
\000\000\031\000\031\000\032\000\055\000\000\000\037\000\037\000\
\037\000\037\000\037\000\000\000\031\000\031\000\031\000\031\000\
\031\000\000\000\000\000\000\000\032\000\032\000\069\000\000\000\
\000\000\000\000\000\000\092\000\056\000\057\000\058\000\032\000\
\032\000\032\000\032\000\032\000\000\000\000\000\000\000\059\000\
\060\000\061\000\062\000\063\000\000\000\000\000\056\000\057\000\
\058\000\000\000\000\000\056\000\057\000\058\000\082\000\000\000\
\000\000\059\000\060\000\061\000\062\000\063\000\059\000\060\000\
\061\000\062\000\063\000\036\000\000\000\036\000\037\000\038\000\
\000\000\000\000\036\000\000\000\056\000\057\000\058\000\038\000\
\000\000\038\000\000\000\000\000\000\000\039\000\038\000\059\000\
\060\000\061\000\062\000\063\000\000\000\005\000\040\000\000\000\
\000\000\041\000\042\000\043\000\000\000\083\000\036\000\036\000\
\036\000\036\000\036\000\000\000\000\000\000\000\000\000\006\000\
\000\000\007\000\038\000\038\000\038\000\038\000\038\000\000\000\
\008\000\000\000\009\000\056\000\057\000\058\000\000\000\056\000\
\057\000\058\000\000\000\000\000\000\000\000\000\059\000\060\000\
\061\000\062\000\063\000\060\000\061\000\062\000\063\000"

let yycheck = "\001\001\
\000\000\002\001\082\000\083\000\025\001\026\001\027\001\025\001\
\026\001\027\001\001\001\091\000\003\001\036\000\001\000\095\000\
\039\000\008\001\036\001\037\001\038\001\039\001\040\001\058\001\
\047\000\048\000\049\000\028\001\030\001\031\001\053\000\054\000\
\058\001\056\000\057\000\058\000\059\000\060\000\061\000\062\000\
\063\000\004\001\005\001\045\001\003\001\036\001\009\001\008\001\
\011\001\012\001\013\001\004\001\054\001\016\000\058\001\057\001\
\058\001\059\001\001\001\022\000\003\001\084\000\025\000\086\000\
\001\001\008\001\003\001\030\001\031\001\092\000\058\001\004\001\
\005\001\001\001\002\001\001\001\009\001\002\001\011\001\012\001\
\013\001\004\001\045\001\002\001\029\001\002\001\009\001\003\001\
\011\001\012\001\013\001\054\001\008\001\001\001\057\001\058\001\
\059\001\030\001\031\001\003\001\003\001\008\001\047\001\027\001\
\049\001\008\001\003\001\030\001\031\001\010\001\003\001\056\001\
\045\001\058\001\003\001\001\001\001\001\025\000\003\001\003\001\
\003\001\054\001\045\001\008\001\057\001\058\001\059\001\003\001\
\031\000\255\255\255\255\054\001\004\001\005\001\057\001\058\001\
\059\001\009\001\092\000\011\001\012\001\013\001\001\001\255\255\
\003\001\255\255\255\255\255\255\255\255\008\001\255\255\036\001\
\037\001\038\001\039\001\040\001\255\255\255\255\030\001\031\001\
\255\255\255\255\255\255\001\001\255\255\003\001\025\001\026\001\
\027\001\001\001\008\001\003\001\255\255\045\001\255\255\255\255\
\008\001\036\001\037\001\038\001\039\001\040\001\054\001\255\255\
\255\255\057\001\255\255\059\001\001\001\255\255\003\001\255\255\
\255\255\025\001\026\001\008\001\001\001\255\255\036\001\037\001\
\038\001\039\001\040\001\255\255\036\001\037\001\038\001\039\001\
\040\001\255\255\255\255\255\255\025\001\026\001\001\001\255\255\
\255\255\255\255\255\255\001\001\025\001\026\001\027\001\036\001\
\037\001\038\001\039\001\040\001\255\255\255\255\255\255\036\001\
\037\001\038\001\039\001\040\001\255\255\255\255\025\001\026\001\
\027\001\255\255\255\255\025\001\026\001\027\001\003\001\255\255\
\255\255\036\001\037\001\038\001\039\001\040\001\036\001\037\001\
\038\001\039\001\040\001\001\001\255\255\003\001\030\001\031\001\
\255\255\255\255\008\001\255\255\025\001\026\001\027\001\001\001\
\255\255\003\001\255\255\255\255\255\255\045\001\008\001\036\001\
\037\001\038\001\039\001\040\001\255\255\029\001\054\001\255\255\
\255\255\057\001\058\001\059\001\255\255\003\001\036\001\037\001\
\038\001\039\001\040\001\255\255\255\255\255\255\255\255\047\001\
\255\255\049\001\036\001\037\001\038\001\039\001\040\001\255\255\
\056\001\255\255\058\001\025\001\026\001\027\001\255\255\025\001\
\026\001\027\001\255\255\255\255\255\255\255\255\036\001\037\001\
\038\001\039\001\040\001\037\001\038\001\039\001\040\001"

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
# 365 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                     ( [], [] )
# 371 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser.mly"
                 ( (_2 :: fst _1), snd _1 )
# 379 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 39 "parser.mly"
                 ( fst _1, (_2 :: snd _1) )
# 387 "parser.ml"
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
# 398 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
                           ( [] )
# 404 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 45 "parser.mly"
                         ( List.rev _1 )
# 411 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
                        ( [(_1,_2)] )
# 419 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
                                          ( (_3,_4) :: _1 )
# 428 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
         ( Int )
# 434 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
          ( Void )
# 440 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 53 "parser.mly"
           ( Float )
# 447 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
          ( Bool )
# 453 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "parser.mly"
            ( String )
# 460 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
                        ([])
# 466 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 57 "parser.mly"
                      (_2 :: _1)
# 474 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 59 "parser.mly"
                       ( (_1,_2) )
# 482 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
                         ( [] )
# 488 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 63 "parser.mly"
                          ( _2 :: _1 )
# 496 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 66 "parser.mly"
                ( Expr _1 )
# 503 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
                  (Return Noexpr )
# 509 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 68 "parser.mly"
                       (Return _2 )
# 516 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 69 "parser.mly"
                              ( Block(List.rev _2))
# 523 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 70 "parser.mly"
                                           ( If(_3, _5, _7) )
# 532 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 71 "parser.mly"
                                                              (For(_3,_5,_7,_9))
# 542 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 72 "parser.mly"
                                    (While(_3,_5))
# 550 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 74 "parser.mly"
              ( Literal(_1) )
# 557 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 75 "parser.mly"
               ( FloatLit(_1) )
# 564 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
             ( StringLit(_1) )
# 571 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 77 "parser.mly"
                         ( Assign(_1, _3) )
# 579 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "parser.mly"
                     ( Binop(_1, Plus, _3) )
# 587 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 79 "parser.mly"
                      ( Binop(_1, Minus, _3) )
# 595 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
                      ( Binop(_1, Times, _3) )
# 603 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 81 "parser.mly"
                      ( Binop(_1, Equal, _3) )
# 611 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                     ( Binop(_1, Less, _3) )
# 619 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                      ( Binop(_1, Great, _3) )
# 627 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                       ( Binop(_1, LessEQ, _3) )
# 635 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                        ( Binop(_1, GreatEQ, _3) )
# 643 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
               ( Unop(Not, _2) )
# 650 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 87 "parser.mly"
                   ( Searchstring(_1) )
# 657 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "parser.mly"
           ( BoolLit(true))
# 663 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parser.mly"
            ( BoolLit(false))
# 669 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actual_opt) in
    Obj.repr(
# 90 "parser.mly"
                                      ( Call(_1, _3) )
# 677 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "parser.mly"
                        ( Noexpr )
# 683 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 93 "parser.mly"
               (_1)
# 690 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "parser.mly"
                          ( [] )
# 696 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actual_list) in
    Obj.repr(
# 96 "parser.mly"
                        ( List.rev _1 )
# 703 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                  ( [_1] )
# 710 "parser.ml"
               : 'actual_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actual_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                                    ( _3 :: _1 )
# 718 "parser.ml"
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
