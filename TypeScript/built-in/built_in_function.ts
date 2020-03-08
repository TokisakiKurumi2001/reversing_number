const readline = require('readline')

class Reverse {
	num : string

	constructor(num : string) {
		this.num = num
	}

	reverseNumber() : string {
		return this.num.split("").reverse().join("")
	}
}

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
})

rl.question('Please enter a number: ', (answer) => {
	let rev = new Reverse(answer)
	let res = rev.reverseNumber()
	console.log(res)

	rl.close()
})