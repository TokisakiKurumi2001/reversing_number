#include <stdio.h>

int reverse_num(int number)
{
	int num_return = 0;
	int digit = 0;
	int i = 0;
	while (number != 0)
	{
		digit = number % 10;
		num_return = num_return * 10 + digit;
		number /= 10;
	}
	return num_return;
}

int main(int argc, const char * argv[])
{
	int number = 0;
	int rc = fscanf(stdin, "%d", &number);
	if (rc < 0) {
		printf("Please enter a number: ");
	}

	int res = reverse_num(number);
	printf("Result: %d\n", res);
	return 0;
}