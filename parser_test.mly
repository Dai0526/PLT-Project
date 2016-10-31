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

mathexpr:
    LITERAL { Literal($1) }
  | FLOAT { FloatLit($1) }
  | mathexpr ADD mathexpr { Mathop($1, Add, $3) }
  | mathexpr MINUS mathexpr { Mathop($1, Minus, $3) }
  | mathexpr TIMES mathexpr { Mathop($1, Times, $3) }
  | STRING ASSIGN mathexpr { Assign($1, $3) }
  | mathexpr EQUAL mathexpr { Binop($1, Equal, $3) }
  | mathexpr LESS mathexpr { Binop($1, Less, $3) }
  | mathexpr GREAT mathexpr { Binop($1, Great, $3) }
  | mathexpr LESSEQ mathexpr { Binop($1, LessEQ, $3) }
  | mathexpr GREATEQ mathexpr { Binop($1, GreatEQ, $3) }
  | NOT mathexpr { Unop(Not, $2) }

stringexpr:
    STRING { StringLit($1) }
  | stringexpr ADD stringexpr { Stringop($1, Add, $3) }
  | stringexpr MINUS stringexpr { Stringop($1, Minus, $3) }
  | stringexpr TIMES stringexpr { Stringop($1, Times, $3) }
  | STRING ASSIGN stringexpr { Assign($1, $3) }
  | stringexpr EQUAL stringexpr { Binop($1, Equal, $3) }
  | stringexpr LESS stringexpr { Binop($1, Less, $3) }
  | stringexpr GREAT stringexpr { Binop($1, Great, $3) }
  | stringexpr LESSEQ stringexpr { Binop($1, LessEQ, $3) }
  | stringexpr GREATEQ stringexpr { Binop($1, GreatEQ, $3) }
  | NOT stringexpr { Unop(Not, $2) }
