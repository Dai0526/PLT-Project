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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
