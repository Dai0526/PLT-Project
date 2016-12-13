%{ open Ast %}

%token SEMI LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET COMMA
%token IF ELSE WHILE FOR RETURN AFTER BEFORE OPEN CLOSE 
%token SCAN COPY COUNT READLINE WRITE REPLACE DELETE
%token PLUS MINUS TIMES ASSIGN BOOL TRUE FALSE
%token INCREMENT DECREMENT PLUSEQ MINUSEQ
%token EQUAL LESS LESSEQ GREAT GREATEQ UNEQUAL 
%token AND OR MATCH CONDITION NOT NEW
%token INT CHAR VOID STRING FLOAT
%token INDEX SUBSTR TOUPPER TOLOWER

%token <int> LITERAL VARIABLE
%token <float> FLOATLIT
%token <string> STRINGLIT SEARCHSTRING NEWSTRINGLIT
%token <char> CHAR_LITERAL
%token EOF

%nonassoc ELSE
%right ASSIGN
%left OR
%left AND
%left EQUAL UNEQUAL
%left MATCH
%left LESS GREAT LESSEQ GREATEQ
%left PLUS MINUS
%left PLUSEQ MINUSEQ
%left INCREMENT DECREMENT
%left TIMES
%right NEG NOT

%start program
%type <Ast.program> program

%%
program: decls EOF  { $1 }

decls: /* nothing */ { [], [] }
   | decls vdecl { ($2 :: fst $1), snd $1 }
   | decls fdecl { fst $1, ($2 :: snd $1) }

fdecl:
   typ STRINGLIT LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE { { typ = $1; fname = $2; formals = $4; locals = List.rev $7; body = List.rev $8 } }

formals_opt: /* nothing */ { [] }
           | formal_list { List.rev $1 }

formal_list: typ STRINGLIT { [($1,$2)] } 
           | formal_list COMMA typ STRINGLIT { ($3,$4) :: $1 }
   

typ: INT { Int }
   | FLOAT { Float}
   | VOID { Void }
   | BOOL { Bool }
   | STRING { String }
   | CHAR {Char}
vdecl_list: /*nothing*/ {[]}
   | vdecl_list vdecl {$2 :: $1}

vdecl: typ STRINGLIT SEMI { ($1,$2) } 


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

expr: LITERAL { Literal($1) }
    | FLOATLIT { FloatLit($1) }
    | STRINGLIT { StringLit($1) }
    | NEWSTRINGLIT { NewstringLit($1) }
    | STRINGLIT ASSIGN expr { Assign($1, $3) }
    | CHAR_LITERAL {Char_Lit($1)}
    | expr PLUS expr { Binop($1, Plus, $3) }
    | expr MINUS expr { Binop($1, Minus, $3) }
    | expr TIMES expr { Binop($1, Times, $3) }
    | expr EQUAL expr { Binop($1, Equal, $3) }
    | expr UNEQUAL expr {Binop($1, Unequal, $3)}
    | expr LESS expr { Binop($1, Less, $3) }
    | expr GREAT expr { Binop($1, Great, $3) }
    | expr LESSEQ expr { Binop($1, LessEQ, $3) }
    | expr GREATEQ expr { Binop($1, GreatEQ, $3) }
    | NOT expr { Unop(Not, $2) }
    | SEARCHSTRING { Searchstring($1) }
    | TRUE { BoolLit(true)}
    | FALSE { BoolLit(false)}
    | STRINGLIT LPAREN actual_opt RPAREN { Call($1, $3) }
    | STRINGLIT LBRACKET expr RBRACKET { Array($1,$3)}
    | STRINGLIT ASSIGN NEW LBRACKET expr RBRACKET {Init($1,$5)}
    | STRINGLIT LBRACKET expr RBRACKET ASSIGN expr {Arrayassign($1,$3,$6)}
    | STRINGLIT ASSIGN ASSIGN ASSIGN STRINGLIT LBRACKET expr RBRACKET {Arrayaccess($1,$5,$7)}

expr_opt: /* nothing */ { Noexpr }
        | expr {$1}

actual_opt: /* nothing */ { [] }
          | actual_list { List.rev $1 }

actual_list: expr { [$1] }
           | actual_list COMMA expr { $3 :: $1 }
