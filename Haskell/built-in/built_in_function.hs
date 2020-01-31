reverseNum :: Int -> Int
reverseNum num = read(reverse(show(num)))::Int

reverseNumX :: String -> String
reverseNumX num = reverse(num)

main = do
	print(reverseNum 1234567890987654321)
	print(reverseNumX "123456789098765432123456789")