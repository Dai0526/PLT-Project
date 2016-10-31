type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACKET
  | RBRACKET
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
  | STRING
  | VOID
  | TRUE
  | FALSE
  | LITERAL of (int)
  | VARIABLE of (int)
  | ID of (string)
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
  264 (* IF *);
  265 (* ELSE *);
  266 (* WHILE *);
  267 (* FOR *);
  268 (* RETURN *);
  269 (* AFTER *);
  270 (* BEFORE *);
  271 (* OPEN *);
  272 (* CLOSE *);
  273 (* SCAN *);
  274 (* COPY *);
  275 (* COUNT *);
  276 (* READLINE *);
  277 (* WRITE *);
  278 (* REPLACE *);
  279 (* DELETE *);
  280 (* ADD *);
  281 (* MINUS *);
  282 (* TIMES *);
  283 (* ASSIGN *);
  284 (* INCREMENT *);
  285 (* DECREMENT *);
  286 (* PLUSEQ *);
  287 (* MINUSEQ *);
  288 (* TIMESEQ *);
  289 (* DIVIDEEQ *);
  290 (* EQUAL *);
  291 (* UNEQUAL *);
  292 (* LESS *);
  293 (* LESSEQ *);
  294 (* GREAT *);
  295 (* GREATEQ *);
  296 (* AND *);
  297 (* OR *);
  298 (* MATCH *);
  299 (* NOTMATCH *);
  300 (* CONDITION *);
  301 (* FILE *);
  302 (* INT *);
  304 (* CHAR *);
  305 (* STRING *);
  306 (* VOID *);
  307 (* TRUE *);
  308 (* FALSE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  303 (* FLOAT *);
  309 (* LITERAL *);
  310 (* VARIABLE *);
  311 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\004\000\003\000\005\000\005\000\
\005\000\006\000\006\000\006\000\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\000\000\002\000\003\000\001\000\001\000\
\001\000\001\000\001\000\003\000\003\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\016\000\000\000\007\000\009\000\008\000\001\000\
\003\000\000\000\000\000\006\000"

let yydgoto = "\002\000\
\003\000\004\000\009\000\000\000\010\000\000\000"

let yysindex = "\255\255\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\203\254\002\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yytablesize = 307
let yytable = "\001\000\
\008\000\011\000\012\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\005\000\006\000\
\000\000\000\000\007\000"

let yycheck = "\001\000\
\000\000\055\001\001\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\046\001\047\001\
\255\255\255\255\050\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LBRACKET\000\
  RBRACKET\000\
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
  STRING\000\
  VOID\000\
  TRUE\000\
  FALSE\000\
  EOF\000\
  "

let yynames_block = "\
  FLOAT\000\
  LITERAL\000\
  VARIABLE\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 35 "parser_test.mly"
                    ( _1 )
# 305 "parser_test.ml"
               : Ast_test.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser_test.mly"
                     ( [], [] )
# 311 "parser_test.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser_test.mly"
                 ( (_2 :: fst _1), snd _1 )
# 319 "parser_test.ml"
               : 'decls))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "parser_test.mly"
                        ([])
# 325 "parser_test.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 41 "parser_test.mly"
                      (_2 :: _1)
# 333 "parser_test.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 43 "parser_test.mly"
                   ( (_1,_2) )
# 341 "parser_test.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "parser_test.mly"
         ( Int )
# 347 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parser_test.mly"
          ( Void )
# 353 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 49 "parser_test.mly"
           ( Float )
# 360 "parser_test.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 52 "parser_test.mly"
            ( Literal(_1) )
# 367 "parser_test.ml"
               : 'mathexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 53 "parser_test.mly"
          ( FloatLit(_1) )
# 374 "parser_test.ml"
               : 'mathexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'mathexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'mathexpr) in
    Obj.repr(
# 54 "parser_test.mly"
                          ( Binop(_1, Add, _3) )
# 382 "parser_test.ml"
               : 'mathexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'mathexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'mathexpr) in
    Obj.repr(
# 55 "parser_test.mly"
                            ( Binop(_1, Minus, _3) )
# 390 "parser_test.ml"
               : 'mathexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'mathexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'mathexpr) in
    Obj.repr(
# 56 "parser_test.mly"
                            ( Binop(_1, Times, _3) )
# 398 "parser_test.ml"
               : 'mathexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'mathexpr) in
    Obj.repr(
# 57 "parser_test.mly"
                       ( Assign(_1, _3) )
# 406 "parser_test.ml"
               : 'mathexpr))
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
