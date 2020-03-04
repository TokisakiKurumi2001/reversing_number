class Reverse {
	fun reverseNumber(number : String?) : String = number?.reversed() ?: ""
}

fun main(args: Array<String>) {
	val rev = Reverse()
	val input = readLine()
	val res : String = rev.reverseNumber(input)
	println(res)
}