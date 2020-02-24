import Foundation

class Reverse {
	func reverse_number(_ num : String) -> String {
		let length : Int = num.count
		let bound : Int = length / 2
		var symmetry = length - 1
		var temp : Character = "a";

		var arr : [Character] = [Character](num)

		for i in 0...bound {
			symmetry = length - 1 - i
			temp = arr[i]
			arr[i] = arr[symmetry]
			arr[symmetry] = temp
		}

		let return_str = String(arr)

		return return_str
	}
}