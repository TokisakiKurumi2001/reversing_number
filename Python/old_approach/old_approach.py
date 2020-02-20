def reverse_number(num):
	the_sum = 0
	digit = 0
	
	while num != 0:
		digit = num % 10
		the_sum = the_sum * 10 + digit
		num = int(num / 10)

	return the_sum

num = int(input("Please insert a number: "))
res = reverse_number(num)
print(res)