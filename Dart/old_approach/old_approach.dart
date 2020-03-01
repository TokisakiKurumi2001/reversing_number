import 'dart:io';

class Reverse {
	int reverseNumber(int number) {
		var digit = 0;
		var sum = 0;

		while (number != 0) {
			digit = number % 10;
			sum = sum * 10 + digit;
			number = number ~/ 10;
		}

		return sum;
	}
}

void main() {
	Reverse rev = new Reverse();
	var input = stdin.readLineSync();
	var number = int.parse(input);
	var res = rev.reverseNumber(number);
	print(res);
}