const readline = require('readline')

class Reverse {
	num : number

	constructor(num : number) {
		this.num = num
	}

	reverseNumber() : number {
		var the_number : number = this.num
		var digit : number
		var sum : number = 0

		while (the_number != 0) {
			digit = the_number % 10
			sum = sum * 10 + digit
			the_number = Math.floor(the_number / 10)
		}

		return sum
	}
}

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
})

rl.question('Please enter a number: ', (answer) => {
	let num : number = parseInt(answer)
	let rev = new Reverse(num)
	let res = rev.reverseNumber()
	console.log(res)

	rl.close()
})