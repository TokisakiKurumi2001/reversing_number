class Reverse
{
	public function new()
	{

	}

	public function reverseNum(num : String) : String
	{
		var arr : Array<String> = num.split('');
		arr.reverse();
		var return_str : String = arr.join('');
		return return_str;
	}
}

class ReverseNumber
{
	static public function main() : Void
	{
		var rev = new Reverse();
		var num : String = "123456789098765432123456789";
		var res : String = rev.reverseNum(num);
		trace(res);
	}
}