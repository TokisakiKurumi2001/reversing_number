const readline = require('readline');

function reverse_num(number)
{
	let arr = number.split('');
	let len = arr.length;
	let bound = parseInt(len / 2);
	let i = 0;
	let symmetry = len - 1 - i;
	let temp = '';

	for (i = 0; i < bound; i++)
	{
		symmetry = len - 1 - i;
		temp = arr[i];
		arr[i] = arr[symmetry];
		arr[symmetry] = temp;
	}

	return arr.join('');
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