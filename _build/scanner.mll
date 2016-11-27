{ open Parser 

  let unescape s = 
      Scanf.sscanf ("\""^ s ^ "\"") "%S%!" (fun x->x)
}

let ascii=[' '-'!' '#'-'[' ']'-'~' ]
let escape= '\\' ['\\' ''' '"' 'n' 'r' 't']

let newstring= '"' ((ascii|escape)* as s) '"'

rule token = parse
  [' ' '\t' '\r' '\n' '\\' ] {token lexbuf} (* Whitespace *)
| "(" {LPAREN}
| ")" {RPAREN}
| "{" {LBRACE}
| "}" {RBRACE}
| "[" {LBRACKET}
| "]" {RBRACKET}
| "file" {FILE}
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
| "bool" {BOOL}
| ';' {SEMI}
| '+' {PLUS}
| '-' {MINUS}
| '*' {TIMES}
(* | '/' {DIVIDE} *)

| '=' {ASSIGN}
| "++" {INCREMENT}
| "--" {DECREMENT}
| "+=" {PLUSEQ}
| "-=" {MINUSEQ}
(*| "/=" {DIVIDEEQ}*)
| "==" {EQUAL}
| '<' {LESS}
| "<=" {LESSEQ}
| '>' {GREAT}
| ">=" {GREATEQ}
| "&&" {AND}
| "||" {OR}
| '~' {MATCH}
| "?:" {CONDITION}
| '!' {NOT}
| "int" {INT}
| "float" {FLOAT}
| "string" {STRING}
| '$'['0'-'9'] as lit { VARIABLE(int_of_char lit.[1] - 48) }
| ['0'-'9']+ as lxm {LITERAL(int_of_string lxm)}
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { STRINGLIT(lxm)}
| ['0'-'9']*'.'['0'-'9']* as lxm { FLOATLIT(float_of_string lxm) }
| '/'['a'-'z' 'A'-'Z' '0'-'9' '|' '!']* as lxm {SEARCHSTRING(lxm) }
| newstring {NEWSTRINGLIT((unescape s))}
| eof {EOF}
| "#" { comment lexbuf } (* Comments *)

and comment = parse
  "\n" { token lexbuf }
| _ { comment lexbuf }