#include <stdlib.h>

void pony_main(int argc, char *argv[]);

char *argv[2]={"blink", NULL};

void *app_main(void* arg)
{
	pony_main(1, argv);
	return NULL;
}

