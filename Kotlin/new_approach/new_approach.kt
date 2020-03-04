class Reverse {
	fun reverseNumber(number : String?) : String {
		val len : Int = number?.length ?: 0
		val bound : Int = len / 2 - 1

		val num = StringBuilder(number ?: "0")

		for (i in 0..bound) {
			num[i] = num[len - 1 - i].also { num[len - 1 -i] = num[i] }
		}

		return num.toString()
	}
}

fun main(args: Array<String>) {
	val rev = Reverse()
	val input = readLine()
	val res : String = rev.reverseNumber(input)
	println(res)
}