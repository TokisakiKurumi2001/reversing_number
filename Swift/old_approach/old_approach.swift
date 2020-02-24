import Foundation

class Reverse {
	func reverse_number(_ number : Int) -> Int {
		var digit : Int = 0
		var sum : Int = 0
		var num : Int = number

		while num != 0 {
			digit = num % 10
			sum = sum * 10 + digit
			num = num / 10
		}

		return sum
	}
}

let rev = Reverse()
let num : Int = 12345678987654
let res : Int = rev.reverse_number(num)
print("\(res)")