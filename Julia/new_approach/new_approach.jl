function reversenumber(number::String)::String
	len = length(number)
	bound = convert(Int64, floor(len / 2))

	arr = split(number, "")

	for i = 1:bound
		arr[i], arr[len - i + 1] = arr[len - i + 1], arr[i]
	end

	return join(arr, "")
end

number = readline()
res = reversenumber(number)
println(res)