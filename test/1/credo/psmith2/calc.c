#include "numbers.h"

void calc(void) {
	printf("calc " NUMBER "\n");
}

int main(void) {
	printf("main " NUMBER "\n");
	calc();
	add();
	mult();
	sub();
}
