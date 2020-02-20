def reverse_number(num):
	ls = list(num)
	arr = ls[::-1]
	return_str = "".join(arr)
	return return_str

num = input("Please insert a number: ")
res = reverse_number(num)
print(res)