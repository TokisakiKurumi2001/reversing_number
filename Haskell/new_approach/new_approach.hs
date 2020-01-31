reverseNum :: String -> String
reverseNum [] = []
reverseNum xs = [last xs] ++ (reverseNum (init xs))

reverseNum' :: String -> String
reverseNum [] = []
reverseNum (x:xs) = reverseNum xs ++ [x]

main = do
	print(reverseNum "123456789098765432123456789")
	print(reverseNum' "987654321234567890987654321")