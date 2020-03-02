function reversenumber(number::Int64)::Int64
	sum = 0
	digit = 0

	while number != 0
		digit = number % 10
		sum = sum * 10 + digit
		number = convert(Int64, floor(number / 10))
	end

	return sum
end

input = readline()
number = parse(Int64, input)
res = reversenumber(number)
println(res)