package main

import (
	"fmt"
)

type Reverse struct {
	number string
}

func(rev Reverse) ReverseNumber() string {
	var len int = len(rev.number)
	arr := []rune(rev.number)

	for i := 0; i < len / 2; i++ {
		arr[i], arr[len - 1 - i] = arr[len - 1 - i], arr[i]
	}
	
	return string(arr)
}

func main() {
	var input string
	fmt.Scanln(&input)
	
	rev := Reverse{number: input}
	var res string = rev.ReverseNumber()
	fmt.Println(res)
}