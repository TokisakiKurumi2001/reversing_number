def reverse_number(num)
	len = num.size
	bound = 0
	bound = len / 2
	symmetry = len - 1
	temp = ''

	bound.times do |i|
		symmetry = len - 1 - i
		temp = num[i]
		num[i] = num[symmetry]
		num[symmetry] = temp
	end

	num
end

print "Please insert a number: "
num = gets.chomp
res = reverse_number num
puts res