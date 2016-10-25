{ open Parser }

rule token = parse
  [' ' '\t' '\r' '\n' '\\' ] {token lexbuf} (* Whitespace *)
| "file" {FILE}
| "int" {INT}
| "float" {FLOAT}
| "char" {CHAR}
| "string" {STRING}
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
| '+' {MERGE}
| '/' {CHECK}
| "++" {INCREMENT}
| "--" {DECREMENT}
| "==" {EQUAL}
| "!=" {UNEQUAL}
| '<' {LESS}
| "<=" {LESSEQ}
| '>' {GREAT}
| ">=" {GREATEQ}
| '~' {MATCH}
| "!~" {NOTMATCH}
| ['0'-'9']+ as lxm {LITERAL(int_of_string lxm)}
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm)}
| eof {EOF}
| "#" { comment lexbuf } (* Comments *)

and comment = parse
  "#" { token lexbuf }
| _ { comment lexbuf }

