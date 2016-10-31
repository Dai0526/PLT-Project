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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast_test.program
