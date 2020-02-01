class Reverse
{
	public function new()
	{
		
	}
	public function reverseNum(num : Int) : Int
	{
		var sum : Int = 0;
		var digit : Int;

		while (num != 0)
		{
			digit = num % 10;
			sum = sum * 10 + digit;
			num = Std.int(num / 10);
		}
		return sum;
	}		
}

class ReverseNumber
{
	static public function main() : Void
	{
		var rev = new Reverse();
		var num : Int = 1234056789;
		var res : Int = rev.reverseNum(num);
		trace(res);
	}
}