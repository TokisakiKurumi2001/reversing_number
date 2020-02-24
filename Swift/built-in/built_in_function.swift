import Foundation

class Reverse {
	func reverse_number(_ num : String) -> String {
		return String(num.reversed())
	}
}

let rev = Reverse()
let num = "1234567890987654312345"
let res = rev.reverse_number(num)
print("\(res)")