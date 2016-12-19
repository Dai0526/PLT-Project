{ open Parser 

  let unescape s = 
      Scanf.sscanf ("\""^ s ^ "\"") "%S%!" (fun x->x)
}

let ascii=[' '-'!' '#'-'[' ']'-'~' ]
let escape= '\\' ['\\' ''' '"' 'n' 'r' 't']
let digit=['0'-'9']
let char='''(ascii|digit)'''
let escape_char='''(escape)'''
let newstring= '"' ((ascii|escape)* as s) '"'

rule token = parse
  [' ' '\t' '\r' '\n' '\\' ] {token lexbuf} (* Whitespace *)
| "(" {LPAREN}
| ")" {RPAREN}
| "{" {LBRACE}
| "}" {RBRACE}
| "[" {LBRACKET}
| "]" {RBRACKET}
| "void" {VOID}
| "true" {TRUE}
| "false" {FALSE}
| "if" {IF}
| "else" {ELSE}
| "while" {WHILE}
| "for" {FOR}
| "return" {RETURN}
| "bool" {BOOL}
| ';' {SEMI}
| '+' {PLUS}
| '-' {MINUS}
| '*' {TIMES}
| ',' {COMMA}
| '=' {ASSIGN}
| "new" {NEW}
| "==" {EQUAL}
| "!=" {UNEQUAL}
| '<' {LESS}
| "<=" {LESSEQ}
| '>' {GREAT}
| ">=" {GREATEQ}
| '!' {NOT}
| "char" {CHAR}
| "int" {INT}
| "string" {STRING}
| "file" {STRING}
| ['0'-'9']+ as lxm {LITERAL(int_of_string lxm)}
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { STRINGLIT(lxm)}
| char as lxm {CHAR_LITERAL( String.get lxm 1)}
| escape_char as lxm{CHAR_LITERAL(String.get (unescape lxm) 1)}
| newstring {NEWSTRINGLIT((unescape s))}
| eof {EOF}
| "#" { comment lexbuf } (* Comments *)

and comment = parse
  "\n" { token lexbuf }
| _ { comment lexbuf }
