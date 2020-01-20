#include <stdio.h>
#include <string.h>

#define MAX_SIZE 50

int main(int argc, const char * argv[])
{
	char str[MAX_SIZE];
	char * res;
	char * in = NULL;

	in = fgets(str, MAX_SIZE - 1, stdin);
	if (in == NULL)
	{
		printf("Please enter a number\n");
	}

	res = strrev(str);
	printf("Result: %s\n", res);
	return 0;
}