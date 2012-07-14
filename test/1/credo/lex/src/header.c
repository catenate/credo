#include <stdio.h>
#include "lex.h"

void header(void) {
	printf("yywrap will return %d\n", YYWRAP_RETURN);
}
