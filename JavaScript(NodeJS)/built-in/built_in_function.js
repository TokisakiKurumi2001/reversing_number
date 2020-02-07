const readline = require('readline');

function reverse_num(number)
{
	return number.split('').reverse().join('');
}

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});

rl.question('Please insert a number: ', (answer) => {
	let res = reverse_num(answer);
	console.log(res);

	rl.close(); 
});