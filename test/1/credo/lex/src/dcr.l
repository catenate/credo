%{
#include "lex.h"
%}
%%
\xd	;
%%
int yywrap(void) {
	return YYWRAP_RETURN;
}

int main() {
	header();
	yylex();
}
