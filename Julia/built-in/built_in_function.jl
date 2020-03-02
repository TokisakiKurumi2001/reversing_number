function reversenumber(number::String)::String
	return reverse(number)
end

number = readline()
res = reversenumber(number)
println(res)