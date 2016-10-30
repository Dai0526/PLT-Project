{ open Parser }
 
rule token = parse
  [' ' '\t' '\r' '\n' '\\' ] {token lexbuf} (* Whitespace *)
| "file" {FILE}
| "int" {INT}
| "float" {FLOAT}
| "char" {CHAR}
| "string" {STRING}
| "void" {VOID}
| "true" {TRUE}
| "false" {FALSE}
| "if" {IF}
| "else" {ELSE}
| "while" {WHILE}
| "for" {FOR}
| "return" {RETURN}
| "after" {AFTER}
| "before" {BEFORE}
| "open" {OPEN}
| "close" {CLOSE}
| "scan" {SCAN}
| "copy" {COPY}
| "count" {COUNT}
| "readline" {READLINE}
| "write" {WRITE}
| "replace" {REPLACE}
| "delete" {DELETE}
| '+' {ADD}
| '-' {MINUS}
| '*' {TIMES}
(* | '/' {DIVIDE} *)
| '/' { search lexbuf } (* search pattern *)
| "++" {INCREMENT}
| "--" {DECREMENT}
| "+=" {PLUSEQ}
| "-=" {MINUSEQ}
| "*=" {TIMESEQ}
| "/=" {DIVIDEEQ}
| "==" {EQUAL}
| "!=" {UNEQUAL}
| '<' {LESS}
| "<=" {LESSEQ}
| '>' {GREAT}
| ">=" {GREATEQ}
| "&&" {AND}
| "||" {OR}
| '~' {MATCH}
| "!~" {NOTMATCH}
| "?:" {CONDITION}
| '$'['0'-'9'] as lit { VARIABLE(int_of_char lit.[1] - 48) }
| ['0'-'9']+ as lxm {LITERAL(int_of_string lxm)}
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm)}
| eof {EOF}
| "#" { comment lexbuf } (* Comments *)

and comment = parse
  "\n" { token lexbuf }
| _ { comment lexbuf }

and search = parese
  '/' { token lexbuf }
| ['a' - 'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm)}
(* Implement the /cat/ first, test first before adding the rest *)
