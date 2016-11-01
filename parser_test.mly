%{ open Ast_test %}

%token SEMI LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET COMMA
%token IF ELSE WHILE FOR RETURN AFTER BEFORE OPEN CLOSE 
%token SCAN COPY COUNT READLINE WRITE REPLACE DELETE
%token ADD MINUS TIMES ASSIGN
%token INCREMENT DECREMENT PLUSEQ MINUSEQ TIMESEQ DIVIDEEQ 
%token EQUAL UNEQUAL LESS LESSEQ GREAT GREATEQ 
%token AND OR MATCH NOTMATCH CONDITION
%token FILE INT FLOAT CHAR STRING VOID TRUE FALSE RETURN

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
   | decls fdecl { fst $1, ($2 :: snd $1) }

fdecl:
   typ STRING LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE { { typ = $1; fname = $2; formals = $4; locals = List.rev $7; body = List.rev $8 } }

formals_opt: /* nothing */ { [] }
           | formal_list { List.rev $1 }

formal_list: typ STRING { [($1,$2)] } 
           | formal_list COMMA typ STRING { ($3,$4) :: $1 }
   
vdecl_list: /*nothing*/ {[]}
   | vdecl_list vdecl {$2 :: $1}

vdecl: typ STRING SEMI { ($1,$2) } 

typ: INT { Int }
   | VOID { Void }
   | FLOAT { Float }
   | STRING { String }

stmt_list: /* nothing */ { [] }
         | stmt_list stmt { $2 :: $1 }

stmt:
      expr SEMI { Expr $1 }
    | RETURN SEMI {Return Noexpr }
    | RETURN expr SEMI {Return $2 }
    | LBRACE stmt_list RBRACE { Block(List.rev $2)}
    | IF LPAREN expr RPAREN stmt ELSE stmt { If($3, $5, $7) }
    | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt {For($3,$5,$7,$9)}
    | WHILE LPAREN expr RPAREN stmt {While($3,$5)}

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

expr_opt: /* nothing */ { Noexpr }
        | expr {$1}

