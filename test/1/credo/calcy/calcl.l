%{
#include "y.tab.h"
%}
%%

[0-9]+                 {yylval.a_number = atoi(yytext); return number;}
[ \t\n]                ;
[-+*/( );]             {return yytext[0];}
.                      {ECHO; yyerror ("unexpected character");}

%%
int yywrap (void) {return 1;}
