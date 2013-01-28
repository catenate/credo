%{
#include <stdio.h>     /* C declarations used in actions */
%}

%union {int a_number;}         /* Yacc definitions */
%start line
%token <a_number> number
%type <a_number> exp term factor

%%

/* descriptions of expected inputs     corresponding actions (in C) */

line   : exp ';'               {printf ("result is %d\n", $1);}
       ;
exp    : term                  {$$ = $1;}
       | exp '+' term          {$$ = $1 + $3;}
       | exp '-' term          {$$ = $1 - $3;}
       ;
term   : factor                {$$ = $1;}
       | term '*' factor       {$$ = $1 * $3;}
       | term '/' factor       {$$ = $1 / $3;}
       ;
factor : number                {$$ = $1;}
       | '(' exp ')'           {$$ = $2;}
       ;

%%                     /* C code */

int main (void) {return yyparse ( );}

void yyerror (char *s) {fprintf (stderr, "%s\n", s);}
