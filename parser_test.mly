%{ open Ast %}

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
%token <string> ID
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
%right NEG

%start program
%type <Ast.program> program

%%
typ: INT { Int }
   | VOID { Void }
   | FLOAT { Float }

mathexpr:
    LITERAL { Literal($1) }
  | FLOAT { FloatLit($1) }
  | mathexpr ADD mathexpr { Binop($1, Add, $3) }
  | mathexpr MINUS mathexpr { Binop($1, Minus, $3) }
  | mathexpr TIMES mathexpr { Binop($1, Times, $3) }
  | ID ASSIGN mathexpr { Assign($1, $3) }
