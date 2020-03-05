import strutils

proc reverseNumber(number : string) : string =
  let length = len(number)
  let bound = int(length / 2) - 1
  var arr = @number

  for i in 0..bound:
    swap(arr[i], arr[length - 1 - i])

  result = arr.join("")

let number : string = readLine(stdin)
let res : string = reverse_number(number)
echo res