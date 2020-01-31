digitNums :: Int -> Int
digitNums num
	| num <= 9 = 1
	| otherwise = 1 + digitNums (num `div` 10)

reverseNum :: Int -> Int
reverseNum 0 = 0
reverseNum num = digit * (10^(numDigits - 1)) + reverseNum the_rest
	where digit = num `mod` 10
	      numDigits = digitNums num
	      the_rest = num `div` 10

main = do
	print(reverseNum 1234567890987654321)