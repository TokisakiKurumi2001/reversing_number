#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define MAX_SIZE 50

int safecopy(char * from, int from_len, char * to, int to_len);
char * reverse_str(char * str, int len);
int str_len(char * str);

int main(int argc, const char * argv[])
{
	char s[MAX_SIZE];
	char * rc = NULL;
	rc = fgets(s, MAX_SIZE - 1, stdin);
	if (rc == NULL)
	{
		printf("Fail to read number\n");
	}
	int len = str_len(s);
	char * res = reverse_str(s, len);
	printf("%s\n", res);
	return 0;
}

int safecopy(char * from, int from_len, char * to, int to_len)
{
	assert(from != NULL && to != NULL && "from and to string cannot be NULL");
	int max = (from_len > to_len - 1) ? to_len - 1 : from_len;

	int i = 0;
	for (i = 0; i < max; i++)
	{
		to[i] = from[i];
	}

	to[to_len - 1] = '\0';

	return i;
}

char * reverse_str(char * str, int len)
{
	char * return_str = malloc(sizeof(char) * len);

	int rc = safecopy(str, len, return_str, len);
	if (rc < 0)
	{
		assert("Couldn\'t copy string");
	}

	int i = 0;
	int bound = (int)len / 2;
	int symmetry = 0;
	char temp;

	for (i = 0; i < bound; i++)
	{
		symmetry = len - 2 - i;
		temp = return_str[i];
		return_str[i] = return_str[symmetry];
		return_str[symmetry] = temp;
	}

	return return_str;
}

int str_len(char * str)
{
	int i = 0;
	char curr_char = str[i];
	while (curr_char != '\0')
	{
		i++;
		curr_char = str[i];
	}

	return i;
}