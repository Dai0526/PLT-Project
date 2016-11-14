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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast_test.program