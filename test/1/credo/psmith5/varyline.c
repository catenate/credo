int main(void) {
	// “Be warned that overusing the #ifdef directive can make
	// the source code hard to follow, especially when multiple
	// variants interact with each other.”

#ifdef DEBUG
	printf("debug\n");
#endif

#ifdef LANG_EN
	printf("I believe in ");
#ifdef EDITION_HOME
	printf("freedom.\n");
#endif
#ifdef EDITION_PROF
	printf("free speech.\n");
#endif
#endif /* LANG_EN */

#ifdef LANG_LA
	printf("Credo in ");
#ifdef EDITION_HOME
	printf("libero.\n");
#endif
#ifdef EDITION_PROF
	printf("libertatis.\n");
#endif
#endif /* LANG_LA */
}
