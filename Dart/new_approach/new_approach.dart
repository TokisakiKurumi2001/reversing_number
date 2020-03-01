import 'dart:io';

class Reverse {
	String reverseNumber(String number) {
		var arr = number.runes.toList();

		var len = arr.length;
		var bound = len ~/ 2;
		var i = 0;
		var symmetry = len - 1 - i;
		var temp;

		for (i = 0; i < bound; i++) {
			symmetry = len - 1 - i;
			temp = arr[i];
			arr[i] = arr[symmetry];
			arr[symmetry] = temp;
		}

		var returnStr = new String.fromCharCodes(arr);
		return returnStr;
	}
}

void main() {
	Reverse rev = new Reverse();
	var number = stdin.readLineSync();
	var res = rev.reverseNumber(number);
	print(res);
}