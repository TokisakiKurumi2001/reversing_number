import strutils

proc reverseNumber(number : int) : int =
  var digit : int
  var sum : int = 0
  var num : int = number

  while (num != 0):
    digit = num mod 10
    sum = sum * 10 + digit
    num = int(num / 10)

  return sum

var number : int = parseInt(readLine(stdin))
var res : int = reverse_number(number)
echo res