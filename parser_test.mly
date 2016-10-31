%{ open Ast_test %}

%token SEMI LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET
%token IF ELSE WHILE FOR RETURN AFTER BEFORE OPEN CLOSE 
%token SCAN COPY COUNT READLINE WRITE REPLACE DELETE
%token ADD MINUS TIMES ASSIGN
%token INCREMENT DECREMENT PLUSEQ MINUSEQ TIMESEQ DIVIDEEQ 
%token EQUAL UNEQUAL LESS LESSEQ GREAT GREATEQ 
%token AND OR MATCH NOTMATCH CONDITION
%token FILE INT FLOAT CHAR STRING VOID TRUE FALSE

%token <int> LITERAL VARIABLE
%token <float> FLOAT
%token <string> STRING
%token EOF

%nonassoc ELSE
%right ASSIGN
%left OR
%left AND
%left EQUAL UNEQUAL
%left MATCH NOTMATCH
%left LESS GREAT LESSEQ GREATEQ
%left PLUS MINUS
%left PLUSEQ MINUSEQ
%left INCREMENT DECREMENT
%left TIMES DIVIDE
%left TIMESEQ DIVIDEEQ
%right NEG NOT

%start program
%type <Ast_test.program> program

%%
program: decls EOF  { $1 }

decls: /* nothing */ { [], [] }
   | decls vdecl { ($2 :: fst $1), snd $1 }
   
vdecl_list: /*nothing*/ {[]}
   | vdecl_list vdecl {$2 :: $1}

vdecl: typ STRING SEMI { ($1,$2) } 

typ: INT { Int }
   | VOID { Void }
   | FLOAT { Float }

expr:
    LITERAL { Literal($1) }
  | FLOAT { FloatLit($1) }
  | expr ADD expr { Binop($1, Add, $3) }
  | expr MINUS expr { Binop($1, Minus, $3) }
  | expr TIMES expr { Binop($1, Times, $3) }
  | STRING ASSIGN expr { Assign($1, $3) }
  | expr EQUAL expr { Binop($1, Equal, $3) }
  | expr LESS expr { Binop($1, Less, $3) }
  | expr GREAT expr { Binop($1, Great, $3) }
  | expr LESSEQ expr { Binop($1, LessEQ, $3) }
  | expr GREATEQ expr { Binop($1, GreatEQ, $3) }
  | NOT expr { Unop(Not, $2) }
