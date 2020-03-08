const readline = require('readline')

class Reverse {
	num : string

	constructor(num : string) {
		this.num = num
	}

	reverseNumber() : string {
		var arr = this.num.split("")

		let len = this.num.length
		let bound = Math.floor(len / 2)
		
		var i = 0
		var symmetry = len - 1 - i
		var temp : string

		for (i = 0; i < bound; i++) {
			symmetry = len - 1 - i
			temp = arr[i]
			arr[i] = arr[symmetry]
			arr[symmetry] = temp
		}

		return arr.join("")
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