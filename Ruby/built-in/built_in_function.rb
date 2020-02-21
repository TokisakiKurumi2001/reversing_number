def reverse_number(num)
	num.chars.reverse.join
end

print "Please insert a number: "
num = gets.chomp
res = reverse_number num
puts res