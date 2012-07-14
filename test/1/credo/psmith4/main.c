#include "hello.h"

int main(int argc, char *argv[]) {
	if (MAX(1,2) == 2) {
		hello("World");
	}

	return 0;
}

void main2(void) {
	printf("Back at you.\n");
}
