def reverse_number(num)
	sum = 0
	digit = 0

	while (num != 0)
		digit = num % 10
		sum = sum * 10 + digit
		num = num / 10
	end

	sum
end

print "Please insert a number: "
num = gets.to_i
res = reverse_number num
puts res