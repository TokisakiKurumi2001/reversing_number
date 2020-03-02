package main

import (
	"fmt"
	"strconv"
)

type Reverse struct {
	number int
}

func(rev Reverse) ReverseNumber() int {
	var digit int = 0
	var sum int = 0
	var num int = rev.number

	for num != 0 {
		digit = num % 10
		sum = sum * 10 + digit
		num /= 10
	}

	return sum
}

func main() {
	var input string
	fmt.Scanln(&input)
	
	num, _ := strconv.Atoi(input)

	rev := Reverse{number: num}
	var res int = rev.ReverseNumber()
	fmt.Println(res)
}