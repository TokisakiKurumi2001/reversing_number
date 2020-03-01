import 'dart:io';

class Reverse {
	String reverseNumber(String number) {
		var revArr = number.runes.toList().reversed;
		var returnStr = new String.fromCharCodes(revArr);
		return returnStr;
	}
}

void main() {
	Reverse rev = new Reverse();
	var number = stdin.readLineSync();
	var res = rev.reverseNumber(number);
	print(res);
}