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
  | STRING
  | FLOAT
  | INDEX
  | SUBSTR
  | TOUPPER
  | TOLOWER
  | LITERAL of (int)
  | VARIABLE of (int)
  | FLOATLIT of (float)
  | STRINGLIT of (string)
  | SEARCHSTRING of (string)
  | NEWSTRINGLIT of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast 
# 70 "parser.ml"
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
  306 (* STRING *);
  307 (* FLOAT *);
  308 (* INDEX *);
  309 (* SUBSTR *);
  310 (* TOUPPER *);
  311 (* TOLOWER *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  312 (* LITERAL *);
  313 (* VARIABLE *);
  314 (* FLOATLIT *);
  315 (* STRINGLIT *);
  316 (* SEARCHSTRING *);
  317 (* NEWSTRINGLIT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\007\000\007\000\
\003\000\008\000\008\000\010\000\010\000\010\000\010\000\010\000\
\010\000\010\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\012\000\012\000\013\000\013\000\
\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\000\000\002\000\
\003\000\000\000\002\000\002\000\002\000\003\000\003\000\007\000\
\009\000\005\000\001\000\001\000\001\000\001\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\002\000\
\001\000\001\000\001\000\004\000\000\000\001\000\000\000\001\000\
\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\051\000\000\000\013\000\010\000\012\000\014\000\
\011\000\001\000\003\000\004\000\000\000\000\000\017\000\000\000\
\000\000\000\000\000\000\008\000\000\000\000\000\015\000\000\000\
\000\000\009\000\016\000\000\000\000\000\000\000\018\000\005\000\
\000\000\000\000\000\000\000\000\042\000\043\000\000\000\027\000\
\028\000\000\000\041\000\030\000\019\000\000\000\000\000\000\000\
\000\000\000\000\021\000\000\000\040\000\000\000\000\000\020\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\023\000\000\000\000\000\000\000\000\000\022\000\000\000\000\000\
\000\000\000\000\000\000\000\000\034\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\044\000\000\000\000\000\
\026\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\
\025\000"

let yydgoto = "\002\000\
\003\000\004\000\011\000\012\000\013\000\018\000\025\000\029\000\
\019\000\045\000\046\000\069\000\072\000\073\000"

let yysindex = "\002\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\212\254\022\255\000\000\090\255\
\230\254\060\255\046\255\000\000\061\255\090\255\000\000\013\255\
\090\255\000\000\000\000\021\255\038\255\080\255\000\000\000\000\
\093\255\110\255\115\255\255\254\000\000\000\000\055\255\000\000\
\000\000\000\255\000\000\000\000\000\000\051\255\062\255\055\255\
\055\255\055\255\000\000\203\255\000\000\055\255\055\255\000\000\
\055\255\055\255\055\255\055\255\055\255\055\255\055\255\055\255\
\000\000\160\255\041\000\238\254\081\255\000\000\238\254\122\255\
\118\255\238\254\103\255\103\255\000\000\231\255\078\255\078\255\
\078\255\078\255\120\255\120\255\055\255\000\000\055\255\124\255\
\000\000\208\255\238\254\120\255\055\255\000\000\132\255\120\255\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\141\255\
\000\000\000\000\142\255\000\000\000\000\000\000\000\000\000\000\
\097\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\135\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\145\255\000\000\000\000\000\000\144\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\003\255\000\000\000\000\053\255\000\000\
\146\255\045\255\181\255\187\255\000\000\009\255\251\255\003\000\
\017\000\057\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\076\255\000\000\149\255\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\123\000\000\000\245\255\000\000\000\000\128\000\
\000\000\109\000\233\255\061\000\000\000\000\000"

let yytablesize = 353
let yytable = "\051\000\
\010\000\054\000\001\000\046\000\017\000\046\000\057\000\058\000\
\059\000\035\000\024\000\035\000\052\000\028\000\014\000\053\000\
\035\000\060\000\061\000\062\000\063\000\064\000\015\000\016\000\
\066\000\067\000\068\000\055\000\037\000\038\000\071\000\074\000\
\020\000\075\000\076\000\077\000\078\000\079\000\080\000\081\000\
\082\000\031\000\032\000\039\000\035\000\031\000\033\000\031\000\
\034\000\035\000\036\000\056\000\031\000\022\000\040\000\049\000\
\041\000\042\000\043\000\044\000\049\000\090\000\021\000\091\000\
\023\000\031\000\065\000\037\000\038\000\068\000\033\000\026\000\
\034\000\035\000\036\000\057\000\058\000\059\000\050\000\030\000\
\015\000\085\000\039\000\050\000\037\000\038\000\060\000\061\000\
\062\000\063\000\064\000\037\000\038\000\040\000\048\000\041\000\
\042\000\043\000\044\000\039\000\018\000\018\000\057\000\058\000\
\059\000\018\000\039\000\018\000\018\000\018\000\040\000\049\000\
\041\000\042\000\043\000\044\000\050\000\040\000\005\000\041\000\
\042\000\043\000\044\000\031\000\086\000\087\000\018\000\018\000\
\033\000\059\000\034\000\035\000\036\000\092\000\096\000\029\000\
\006\000\029\000\007\000\008\000\009\000\018\000\029\000\006\000\
\007\000\045\000\047\000\027\000\048\000\037\000\038\000\045\000\
\018\000\095\000\018\000\018\000\018\000\018\000\047\000\029\000\
\029\000\029\000\083\000\000\000\039\000\000\000\000\000\000\000\
\000\000\000\000\029\000\029\000\029\000\029\000\029\000\040\000\
\000\000\041\000\042\000\043\000\044\000\032\000\000\000\032\000\
\057\000\058\000\059\000\033\000\032\000\033\000\000\000\088\000\
\089\000\000\000\033\000\060\000\061\000\062\000\063\000\064\000\
\094\000\000\000\000\000\070\000\097\000\032\000\032\000\000\000\
\093\000\000\000\000\000\033\000\033\000\000\000\000\000\000\000\
\032\000\032\000\032\000\032\000\032\000\000\000\033\000\033\000\
\033\000\033\000\033\000\057\000\058\000\059\000\000\000\000\000\
\057\000\058\000\059\000\000\000\000\000\000\000\060\000\061\000\
\062\000\063\000\064\000\060\000\061\000\062\000\063\000\064\000\
\000\000\000\000\000\000\036\000\000\000\036\000\000\000\057\000\
\058\000\059\000\036\000\038\000\000\000\038\000\000\000\000\000\
\000\000\000\000\038\000\061\000\062\000\063\000\064\000\000\000\
\000\000\037\000\000\000\037\000\000\000\000\000\000\000\000\000\
\037\000\000\000\000\000\000\000\000\000\005\000\036\000\036\000\
\036\000\036\000\036\000\000\000\000\000\000\000\038\000\038\000\
\038\000\038\000\038\000\084\000\000\000\000\000\000\000\006\000\
\000\000\007\000\008\000\009\000\037\000\037\000\037\000\037\000\
\037\000\039\000\000\000\039\000\000\000\000\000\000\000\000\000\
\039\000\057\000\058\000\059\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\060\000\061\000\062\000\063\000\
\064\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\039\000\039\000\039\000\039\000\
\039\000"

let yycheck = "\001\001\
\000\000\002\001\001\000\001\001\016\000\003\001\025\001\026\001\
\027\001\001\001\022\000\003\001\036\000\025\000\059\001\039\000\
\008\001\036\001\037\001\038\001\039\001\040\001\001\001\002\001\
\048\000\049\000\050\000\028\001\030\001\031\001\054\000\055\000\
\059\001\057\000\058\000\059\000\060\000\061\000\062\000\063\000\
\064\000\004\001\005\001\045\001\036\001\001\001\009\001\003\001\
\011\001\012\001\013\001\001\001\008\001\008\001\056\001\003\001\
\058\001\059\001\060\001\061\001\008\001\085\000\003\001\087\000\
\004\001\004\001\005\001\030\001\031\001\093\000\009\001\059\001\
\011\001\012\001\013\001\025\001\026\001\027\001\003\001\059\001\
\001\001\001\001\045\001\008\001\030\001\031\001\036\001\037\001\
\038\001\039\001\040\001\030\001\031\001\056\001\002\001\058\001\
\059\001\060\001\061\001\045\001\004\001\005\001\025\001\026\001\
\027\001\009\001\045\001\011\001\012\001\013\001\056\001\002\001\
\058\001\059\001\060\001\061\001\002\001\056\001\029\001\058\001\
\059\001\060\001\061\001\004\001\003\001\008\001\030\001\031\001\
\009\001\027\001\011\001\012\001\013\001\010\001\003\001\001\001\
\047\001\003\001\049\001\050\001\051\001\045\001\008\001\003\001\
\003\001\001\001\003\001\025\000\003\001\030\001\031\001\003\001\
\056\001\093\000\058\001\059\001\060\001\061\001\031\000\025\001\
\026\001\027\001\003\001\255\255\045\001\255\255\255\255\255\255\
\255\255\255\255\036\001\037\001\038\001\039\001\040\001\056\001\
\255\255\058\001\059\001\060\001\061\001\001\001\255\255\003\001\
\025\001\026\001\027\001\001\001\008\001\003\001\255\255\083\000\
\084\000\255\255\008\001\036\001\037\001\038\001\039\001\040\001\
\092\000\255\255\255\255\001\001\096\000\025\001\026\001\255\255\
\001\001\255\255\255\255\025\001\026\001\255\255\255\255\255\255\
\036\001\037\001\038\001\039\001\040\001\255\255\036\001\037\001\
\038\001\039\001\040\001\025\001\026\001\027\001\255\255\255\255\
\025\001\026\001\027\001\255\255\255\255\255\255\036\001\037\001\
\038\001\039\001\040\001\036\001\037\001\038\001\039\001\040\001\
\255\255\255\255\255\255\001\001\255\255\003\001\255\255\025\001\
\026\001\027\001\008\001\001\001\255\255\003\001\255\255\255\255\
\255\255\255\255\008\001\037\001\038\001\039\001\040\001\255\255\
\255\255\001\001\255\255\003\001\255\255\255\255\255\255\255\255\
\008\001\255\255\255\255\255\255\255\255\029\001\036\001\037\001\
\038\001\039\001\040\001\255\255\255\255\255\255\036\001\037\001\
\038\001\039\001\040\001\003\001\255\255\255\255\255\255\047\001\
\255\255\049\001\050\001\051\001\036\001\037\001\038\001\039\001\
\040\001\001\001\255\255\003\001\255\255\255\255\255\255\255\255\
\008\001\025\001\026\001\027\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\036\001\037\001\038\001\039\001\
\040\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\036\001\037\001\038\001\039\001\
\040\001"

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
  STRING\000\
  FLOAT\000\
  INDEX\000\
  SUBSTR\000\
  TOUPPER\000\
  TOLOWER\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  VARIABLE\000\
  FLOATLIT\000\
  STRINGLIT\000\
  SEARCHSTRING\000\
  NEWSTRINGLIT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 35 "parser.mly"
                    ( _1 )
# 380 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                     ( [], [] )
# 386 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser.mly"
                 ( (_2 :: fst _1), snd _1 )
# 394 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 39 "parser.mly"
                 ( fst _1, (_2 :: snd _1) )
# 402 "parser.ml"
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
# 413 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
                           ( [] )
# 419 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 45 "parser.mly"
                         ( List.rev _1 )
# 426 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
                           ( [(_1,_2)] )
# 434 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
                                             ( (_3,_4) :: _1 )
# 443 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
         ( Int )
# 449 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
           ( Float)
# 455 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "parser.mly"
          ( Void )
# 461 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
          ( Bool )
# 467 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
            ( String )
# 473 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
                        ([])
# 479 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 57 "parser.mly"
                      (_2 :: _1)
# 487 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 59 "parser.mly"
                          ( (_1,_2) )
# 495 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
                         ( [] )
# 501 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 63 "parser.mly"
                          ( _2 :: _1 )
# 509 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 66 "parser.mly"
                ( Expr _1 )
# 516 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
                  (Return Noexpr )
# 522 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 68 "parser.mly"
                       (Return _2 )
# 529 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 69 "parser.mly"
                              ( Block(List.rev _2))
# 536 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 70 "parser.mly"
                                           ( If(_3, _5, _7) )
# 545 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 71 "parser.mly"
                                                              (For(_3,_5,_7,_9))
# 555 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 72 "parser.mly"
                                    (While(_3,_5))
# 563 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 74 "parser.mly"
              ( Literal(_1) )
# 570 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 75 "parser.mly"
               ( FloatLit(_1) )
# 577 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
                ( StringLit(_1) )
# 584 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 77 "parser.mly"
                   ( NewstringLit(_1) )
# 591 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "parser.mly"
                            ( Assign(_1, _3) )
# 599 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 79 "parser.mly"
                     ( Binop(_1, Plus, _3) )
# 607 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
                      ( Binop(_1, Minus, _3) )
# 615 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 81 "parser.mly"
                      ( Binop(_1, Times, _3) )
# 623 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                      ( Binop(_1, Equal, _3) )
# 631 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                     ( Binop(_1, Less, _3) )
# 639 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                      ( Binop(_1, Great, _3) )
# 647 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                       ( Binop(_1, LessEQ, _3) )
# 655 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                        ( Binop(_1, GreatEQ, _3) )
# 663 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
               ( Unop(Not, _2) )
# 670 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 88 "parser.mly"
                   ( Searchstring(_1) )
# 677 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parser.mly"
           ( BoolLit(true))
# 683 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 90 "parser.mly"
            ( BoolLit(false))
# 689 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actual_opt) in
    Obj.repr(
# 91 "parser.mly"
                                         ( Call(_1, _3) )
# 697 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "parser.mly"
                        ( Noexpr )
# 703 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 94 "parser.mly"
               (_1)
# 710 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 96 "parser.mly"
                          ( [] )
# 716 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actual_list) in
    Obj.repr(
# 97 "parser.mly"
                        ( List.rev _1 )
# 723 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                  ( [_1] )
# 730 "parser.ml"
               : 'actual_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actual_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                                    ( _3 :: _1 )
# 738 "parser.ml"
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
