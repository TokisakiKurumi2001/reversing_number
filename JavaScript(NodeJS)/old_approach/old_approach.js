const readline = require('readline');

function reverse_num(number)
{
	let sum = 0;
	let digit = 0;
	while (number != 0)
	{
		digit = parseInt(number % 10);
		sum = sum * 10 + digit;
		number = parseInt(number / 10);
	}

	return sum;
}


const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});

rl.question('Please insert a number: ', (answer) => {
	//input: 123456789098765
	let num = parseInt(answer);
	let res = reverse_num(num);
	console.log(res);

	rl.close(); 
});