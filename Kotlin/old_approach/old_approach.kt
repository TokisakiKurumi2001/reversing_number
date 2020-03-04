class Reverse {
	fun reverseNumber(number: Int?) : Int {
		var digit : Int
		var sum : Int = 0
		var num : Int = number ?: 0

		while (num != 0) {
			digit = num % 10
			sum = sum * 10 + digit
			num = num / 10
		}

		return sum
	}
}

fun main(args: Array<String>) {
	val rev = Reverse()
	val input = readLine()
	val number = input?.toInt()
	val res : Int = rev.reverseNumber(number)
	println(res)
}