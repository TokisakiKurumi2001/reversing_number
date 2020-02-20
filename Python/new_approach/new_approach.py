def reverse_number(num):
	ls = list(num)

	length = len(num)
	bound = int(length / 2)
	symmetry = length - 1
	temp = ''

	for i in range(bound):
		symmetry = length - 1 - i
		temp = ls[i]
		ls[i] = ls[symmetry]
		ls[symmetry] = temp

	return "".join(ls)

num = input("Please insert a number: ")
res = reverse_number(num)
print(res)