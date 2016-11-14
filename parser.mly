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

program: decls EOF { $1 }

decls: /* nothing */ { [], [] }
		 | decls vdecl { ($2 :: fst $1), snd $1 }
		 | decls fdecl { fst $1, ($2 :: snd $1) }

fdecl: 
	type ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
		{ { type = $1; fname = $2; formals = $4; 
				locals = List.rev $7; body = List.rev $8 } } 

formals_opt: /* nothing */	{ [] }
					 | formal_list 		{ List.rev $1 }

formal_list: typ ID											{ [($1,$2)] }
					 | formal_list COMMA typ ID 	{ ($3,$4) :: $1 }

typ: INT { Int }
	 | BOOL { Bool }
	 | VOID { Void }

vdecl_list: /* nothing */ { [] }
					| vdecl_list vdecl {$2 :: $1 }

vdecl: typ ID SEMI { ($1, $2) }

stmt_list: /* nothing */ { [] }
				 | stmt_list stmt { $2 :: $1 }

stmt: expr SEMI 																							{ Expr $1 }
		| RETURN SEMI 																						{ Return Noexpr }
		| RETURN expr SEMI 																				{ Return $2 }
		| LBRACE stmt_list BRACE 																	{ Block(List.rev $2) }
		| IF LPAREN expr RPAREN stmt ELSE stmt 										{ If ($3, $5, $7) }
		| FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt { For($3, $5, $7, $9) }
		| WHILE LPAREN expr RPAREN stmt 													{ While( $3, $5) }



