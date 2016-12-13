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
  | UNEQUAL
  | AND
  | OR
  | MATCH
  | CONDITION
  | NOT
  | NEW
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
  | CHAR_LITERAL of (char)
  | EOF

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast 
# 72 "parser.ml"
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
  297 (* UNEQUAL *);
  298 (* AND *);
  299 (* OR *);
  300 (* MATCH *);
  301 (* CONDITION *);
  302 (* NOT *);
  303 (* NEW *);
  304 (* INT *);
  305 (* CHAR *);
  306 (* VOID *);
  307 (* STRING *);
  308 (* FLOAT *);
  309 (* INDEX *);
  310 (* SUBSTR *);
  311 (* TOUPPER *);
  312 (* TOLOWER *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  313 (* LITERAL *);
  314 (* VARIABLE *);
  315 (* FLOATLIT *);
  316 (* STRINGLIT *);
  317 (* SEARCHSTRING *);
  318 (* NEWSTRINGLIT *);
  319 (* CHAR_LITERAL *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\005\000\007\000\
\007\000\003\000\008\000\008\000\010\000\010\000\010\000\010\000\
\010\000\010\000\010\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\012\000\012\000\013\000\013\000\014\000\
\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\000\000\
\002\000\003\000\000\000\002\000\002\000\002\000\003\000\003\000\
\007\000\009\000\005\000\001\000\001\000\001\000\001\000\003\000\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\001\000\001\000\001\000\004\000\004\000\
\006\000\006\000\008\000\000\000\001\000\000\000\001\000\001\000\
\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\058\000\000\000\013\000\010\000\015\000\012\000\
\014\000\011\000\001\000\003\000\004\000\000\000\000\000\018\000\
\000\000\000\000\000\000\000\000\008\000\000\000\000\000\016\000\
\000\000\000\000\009\000\017\000\000\000\000\000\000\000\019\000\
\005\000\000\000\000\000\000\000\000\000\045\000\046\000\000\000\
\028\000\029\000\000\000\044\000\031\000\033\000\020\000\000\000\
\000\000\000\000\000\000\000\000\022\000\000\000\043\000\000\000\
\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\
\000\000\023\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\036\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\047\000\000\000\000\000\
\000\000\000\000\000\000\027\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\049\000\025\000\000\000\
\000\000\000\000\051\000\026\000"

let yydgoto = "\002\000\
\003\000\004\000\012\000\013\000\014\000\019\000\026\000\030\000\
\020\000\047\000\048\000\073\000\076\000\077\000"

let yysindex = "\004\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\203\254\058\255\000\000\
\063\255\208\254\015\255\014\255\000\000\029\255\063\255\000\000\
\232\254\063\255\000\000\000\000\241\254\076\255\050\255\000\000\
\000\000\053\255\065\255\066\255\016\255\000\000\000\000\180\255\
\000\000\000\000\004\255\000\000\000\000\000\000\000\000\046\000\
\086\255\180\255\180\255\180\255\000\000\064\000\000\000\180\255\
\180\255\169\000\000\000\180\255\180\255\180\255\180\255\180\255\
\180\255\180\255\180\255\180\255\000\000\134\000\155\000\253\255\
\068\255\000\000\253\255\071\255\074\255\157\255\043\255\077\255\
\253\255\057\255\057\255\000\000\081\000\038\255\038\255\038\255\
\038\255\081\000\156\255\156\255\180\255\000\000\180\255\075\255\
\026\255\180\255\083\255\000\000\087\000\253\255\180\255\099\255\
\197\000\156\255\180\255\253\255\180\255\000\000\000\000\107\255\
\214\000\156\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\116\255\000\000\000\000\123\255\000\000\000\000\000\000\000\000\
\000\000\146\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\220\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\129\255\000\000\000\000\000\000\128\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\051\255\
\000\000\000\000\008\255\000\000\137\255\000\000\000\000\000\000\
\101\255\018\000\038\000\000\000\093\255\001\255\108\000\128\000\
\149\000\120\255\000\000\000\000\000\000\000\000\000\000\228\255\
\000\000\000\000\000\000\000\000\000\000\040\255\000\000\000\000\
\000\000\000\000\138\255\117\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\116\000\000\000\027\000\000\000\000\000\112\000\
\000\000\199\255\219\255\045\000\000\000\000\000"

let yytablesize = 511
let yytable = "\054\000\
\011\000\039\000\055\000\039\000\001\000\056\000\015\000\039\000\
\039\000\057\000\056\000\021\000\070\000\071\000\072\000\056\000\
\053\000\022\000\075\000\078\000\081\000\023\000\082\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\090\000\058\000\
\024\000\099\000\100\000\027\000\039\000\039\000\039\000\039\000\
\039\000\039\000\057\000\018\000\031\000\038\000\039\000\057\000\
\111\000\025\000\016\000\053\000\029\000\053\000\050\000\101\000\
\116\000\102\000\016\000\017\000\105\000\040\000\060\000\061\000\
\062\000\108\000\051\000\052\000\093\000\072\000\097\000\113\000\
\041\000\094\000\042\000\043\000\044\000\045\000\046\000\032\000\
\033\000\095\000\098\000\062\000\034\000\104\000\035\000\036\000\
\037\000\032\000\069\000\005\000\106\000\037\000\034\000\037\000\
\035\000\036\000\037\000\037\000\037\000\032\000\103\000\032\000\
\109\000\038\000\039\000\032\000\032\000\114\000\006\000\007\000\
\008\000\009\000\010\000\038\000\039\000\050\000\006\000\050\000\
\038\000\040\000\038\000\050\000\050\000\007\000\038\000\038\000\
\037\000\052\000\054\000\040\000\041\000\037\000\042\000\043\000\
\044\000\045\000\046\000\055\000\052\000\028\000\041\000\049\000\
\042\000\043\000\044\000\045\000\046\000\019\000\019\000\112\000\
\000\000\000\000\019\000\038\000\019\000\019\000\019\000\032\000\
\038\000\000\000\000\000\096\000\034\000\000\000\035\000\036\000\
\037\000\000\000\000\000\000\000\000\000\000\000\000\000\019\000\
\019\000\000\000\000\000\000\000\000\000\060\000\061\000\062\000\
\000\000\038\000\039\000\000\000\000\000\000\000\000\000\019\000\
\063\000\064\000\065\000\066\000\067\000\068\000\000\000\000\000\
\000\000\040\000\019\000\000\000\019\000\019\000\019\000\019\000\
\019\000\038\000\039\000\000\000\041\000\000\000\042\000\043\000\
\044\000\045\000\046\000\000\000\030\000\000\000\030\000\000\000\
\000\000\040\000\030\000\030\000\048\000\000\000\048\000\000\000\
\000\000\000\000\048\000\048\000\041\000\000\000\042\000\043\000\
\044\000\045\000\046\000\000\000\030\000\030\000\030\000\000\000\
\000\000\000\000\000\000\000\000\048\000\048\000\048\000\030\000\
\030\000\030\000\030\000\030\000\030\000\000\000\000\000\048\000\
\048\000\048\000\048\000\048\000\048\000\000\000\000\000\000\000\
\000\000\000\000\034\000\000\000\034\000\060\000\061\000\062\000\
\034\000\034\000\000\000\000\000\000\000\005\000\000\000\000\000\
\063\000\064\000\065\000\066\000\067\000\068\000\035\000\000\000\
\035\000\000\000\034\000\034\000\035\000\035\000\059\000\000\000\
\006\000\007\000\008\000\009\000\010\000\034\000\034\000\034\000\
\034\000\034\000\034\000\000\000\000\000\000\000\035\000\035\000\
\074\000\000\000\000\000\000\000\000\000\000\000\060\000\061\000\
\062\000\035\000\035\000\035\000\035\000\035\000\035\000\000\000\
\000\000\063\000\064\000\065\000\066\000\067\000\068\000\107\000\
\060\000\061\000\062\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\063\000\064\000\065\000\066\000\067\000\
\068\000\060\000\061\000\062\000\041\000\000\000\041\000\060\000\
\061\000\062\000\041\000\041\000\000\000\064\000\065\000\066\000\
\067\000\000\000\063\000\064\000\065\000\066\000\067\000\068\000\
\040\000\000\000\040\000\000\000\000\000\000\000\040\000\040\000\
\091\000\000\000\000\000\000\000\000\000\000\000\000\000\041\000\
\041\000\041\000\041\000\041\000\041\000\042\000\000\000\042\000\
\000\000\000\000\000\000\042\000\042\000\092\000\060\000\061\000\
\062\000\000\000\000\000\040\000\040\000\040\000\040\000\040\000\
\040\000\063\000\064\000\065\000\066\000\067\000\068\000\000\000\
\000\000\000\000\000\000\060\000\061\000\062\000\000\000\000\000\
\042\000\042\000\042\000\042\000\042\000\042\000\063\000\064\000\
\065\000\066\000\067\000\068\000\079\000\000\000\038\000\039\000\
\000\000\000\000\000\000\110\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\040\000\080\000\
\000\000\000\000\000\000\000\000\115\000\060\000\061\000\062\000\
\000\000\041\000\000\000\042\000\043\000\044\000\045\000\046\000\
\063\000\064\000\065\000\066\000\067\000\068\000\060\000\061\000\
\062\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\063\000\064\000\065\000\066\000\067\000\068\000"

let yycheck = "\037\000\
\000\000\001\001\040\000\003\001\001\000\002\001\060\001\007\001\
\008\001\006\001\003\001\060\001\050\000\051\000\052\000\008\001\
\001\001\003\001\056\000\057\000\058\000\008\001\060\000\061\000\
\062\000\063\000\064\000\065\000\066\000\067\000\068\000\028\001\
\004\001\091\000\092\000\060\001\036\001\037\001\038\001\039\001\
\040\001\041\001\003\001\017\000\060\001\030\001\031\001\008\001\
\106\000\023\000\001\001\001\001\026\000\003\001\002\001\093\000\
\114\000\095\000\001\001\002\001\098\000\046\001\025\001\026\001\
\027\001\103\000\002\001\002\001\001\001\107\000\028\001\109\000\
\057\001\003\001\059\001\060\001\061\001\062\001\063\001\004\001\
\005\001\008\001\006\001\027\001\009\001\060\001\011\001\012\001\
\013\001\004\001\005\001\029\001\010\001\001\001\009\001\003\001\
\011\001\012\001\013\001\007\001\008\001\001\001\028\001\003\001\
\006\001\030\001\031\001\007\001\008\001\003\001\048\001\049\001\
\050\001\051\001\052\001\030\001\031\001\001\001\003\001\003\001\
\001\001\046\001\003\001\007\001\008\001\003\001\007\001\008\001\
\036\001\001\001\003\001\046\001\057\001\041\001\059\001\060\001\
\061\001\062\001\063\001\003\001\003\001\026\000\057\001\032\000\
\059\001\060\001\061\001\062\001\063\001\004\001\005\001\107\000\
\255\255\255\255\009\001\036\001\011\001\012\001\013\001\004\001\
\041\001\255\255\255\255\007\001\009\001\255\255\011\001\012\001\
\013\001\255\255\255\255\255\255\255\255\255\255\255\255\030\001\
\031\001\255\255\255\255\255\255\255\255\025\001\026\001\027\001\
\255\255\030\001\031\001\255\255\255\255\255\255\255\255\046\001\
\036\001\037\001\038\001\039\001\040\001\041\001\255\255\255\255\
\255\255\046\001\057\001\255\255\059\001\060\001\061\001\062\001\
\063\001\030\001\031\001\255\255\057\001\255\255\059\001\060\001\
\061\001\062\001\063\001\255\255\001\001\255\255\003\001\255\255\
\255\255\046\001\007\001\008\001\001\001\255\255\003\001\255\255\
\255\255\255\255\007\001\008\001\057\001\255\255\059\001\060\001\
\061\001\062\001\063\001\255\255\025\001\026\001\027\001\255\255\
\255\255\255\255\255\255\255\255\025\001\026\001\027\001\036\001\
\037\001\038\001\039\001\040\001\041\001\255\255\255\255\036\001\
\037\001\038\001\039\001\040\001\041\001\255\255\255\255\255\255\
\255\255\255\255\001\001\255\255\003\001\025\001\026\001\027\001\
\007\001\008\001\255\255\255\255\255\255\029\001\255\255\255\255\
\036\001\037\001\038\001\039\001\040\001\041\001\001\001\255\255\
\003\001\255\255\025\001\026\001\007\001\008\001\001\001\255\255\
\048\001\049\001\050\001\051\001\052\001\036\001\037\001\038\001\
\039\001\040\001\041\001\255\255\255\255\255\255\025\001\026\001\
\001\001\255\255\255\255\255\255\255\255\255\255\025\001\026\001\
\027\001\036\001\037\001\038\001\039\001\040\001\041\001\255\255\
\255\255\036\001\037\001\038\001\039\001\040\001\041\001\001\001\
\025\001\026\001\027\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\036\001\037\001\038\001\039\001\040\001\
\041\001\025\001\026\001\027\001\001\001\255\255\003\001\025\001\
\026\001\027\001\007\001\008\001\255\255\037\001\038\001\039\001\
\040\001\255\255\036\001\037\001\038\001\039\001\040\001\041\001\
\001\001\255\255\003\001\255\255\255\255\255\255\007\001\008\001\
\003\001\255\255\255\255\255\255\255\255\255\255\255\255\036\001\
\037\001\038\001\039\001\040\001\041\001\001\001\255\255\003\001\
\255\255\255\255\255\255\007\001\008\001\003\001\025\001\026\001\
\027\001\255\255\255\255\036\001\037\001\038\001\039\001\040\001\
\041\001\036\001\037\001\038\001\039\001\040\001\041\001\255\255\
\255\255\255\255\255\255\025\001\026\001\027\001\255\255\255\255\
\036\001\037\001\038\001\039\001\040\001\041\001\036\001\037\001\
\038\001\039\001\040\001\041\001\028\001\255\255\030\001\031\001\
\255\255\255\255\255\255\007\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\046\001\047\001\
\255\255\255\255\255\255\255\255\007\001\025\001\026\001\027\001\
\255\255\057\001\255\255\059\001\060\001\061\001\062\001\063\001\
\036\001\037\001\038\001\039\001\040\001\041\001\025\001\026\001\
\027\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\036\001\037\001\038\001\039\001\040\001\041\001"

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
  UNEQUAL\000\
  AND\000\
  OR\000\
  MATCH\000\
  CONDITION\000\
  NOT\000\
  NEW\000\
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
  CHAR_LITERAL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 36 "parser.mly"
                    ( _1 )
# 432 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
                     ( [], [] )
# 438 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 39 "parser.mly"
                 ( (_2 :: fst _1), snd _1 )
# 446 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 40 "parser.mly"
                 ( fst _1, (_2 :: snd _1) )
# 454 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 43 "parser.mly"
                                                                              ( { typ = _1; fname = _2; formals = _4; locals = List.rev _7; body = List.rev _8 } )
# 465 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "parser.mly"
                           ( [] )
# 471 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 46 "parser.mly"
                         ( List.rev _1 )
# 478 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
                           ( [(_1,_2)] )
# 486 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 49 "parser.mly"
                                             ( (_3,_4) :: _1 )
# 495 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
         ( Int )
# 501 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "parser.mly"
           ( Float)
# 507 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
          ( Void )
# 513 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
          ( Bool )
# 519 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
            ( String )
# 525 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
          (Char)
# 531 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                        ([])
# 537 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 59 "parser.mly"
                      (_2 :: _1)
# 545 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 61 "parser.mly"
                          ( (_1,_2) )
# 553 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
                         ( [] )
# 559 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 65 "parser.mly"
                          ( _2 :: _1 )
# 567 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 68 "parser.mly"
                ( Expr _1 )
# 574 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
                  (Return Noexpr )
# 580 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 70 "parser.mly"
                       (Return _2 )
# 587 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 71 "parser.mly"
                              ( Block(List.rev _2))
# 594 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 72 "parser.mly"
                                           ( If(_3, _5, _7) )
# 603 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 73 "parser.mly"
                                                              (For(_3,_5,_7,_9))
# 613 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 74 "parser.mly"
                                    (While(_3,_5))
# 621 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 76 "parser.mly"
              ( Literal(_1) )
# 628 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 77 "parser.mly"
               ( FloatLit(_1) )
# 635 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 78 "parser.mly"
                ( StringLit(_1) )
# 642 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 79 "parser.mly"
                   ( NewstringLit(_1) )
# 649 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
                            ( Assign(_1, _3) )
# 657 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 81 "parser.mly"
                   (Char_Lit(_1))
# 664 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                     ( Binop(_1, Plus, _3) )
# 672 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                      ( Binop(_1, Minus, _3) )
# 680 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                      ( Binop(_1, Times, _3) )
# 688 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                      ( Binop(_1, Equal, _3) )
# 696 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                        (Binop(_1, Unequal, _3))
# 704 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
                     ( Binop(_1, Less, _3) )
# 712 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 88 "parser.mly"
                      ( Binop(_1, Great, _3) )
# 720 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 89 "parser.mly"
                       ( Binop(_1, LessEQ, _3) )
# 728 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 90 "parser.mly"
                        ( Binop(_1, GreatEQ, _3) )
# 736 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 91 "parser.mly"
               ( Unop(Not, _2) )
# 743 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 92 "parser.mly"
                   ( Searchstring(_1) )
# 750 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "parser.mly"
           ( BoolLit(true))
# 756 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "parser.mly"
            ( BoolLit(false))
# 762 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actual_opt) in
    Obj.repr(
# 95 "parser.mly"
                                         ( Call(_1, _3) )
# 770 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                                       ( Array(_1,_3))
# 778 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                                                  (Init(_1,_5))
# 786 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                                                   (Arrayassign(_1,_3,_6))
# 795 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                                                                      (Arrayaccess(_1,_5,_7))
# 804 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 101 "parser.mly"
                        ( Noexpr )
# 810 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 102 "parser.mly"
               (_1)
# 817 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 104 "parser.mly"
                          ( [] )
# 823 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actual_list) in
    Obj.repr(
# 105 "parser.mly"
                        ( List.rev _1 )
# 830 "parser.ml"
               : 'actual_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                  ( [_1] )
# 837 "parser.ml"
               : 'actual_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actual_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                                    ( _3 :: _1 )
# 845 "parser.ml"
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
