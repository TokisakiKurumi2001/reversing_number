class Reverse
{
	public function new()
	{

	}

	public function reverseNum(num : String) : String
	{
		var arr : Array<String> = num.split('');
		var i : Int = 0;
		var len : Int = num.length;
		var bound = Std.int(len / 2);
		var temp : String;
		var return_str : String;
		var symmetry : Int = len - 1 - i;

		while (i < bound)
		{
			symmetry = len - 1 - i;
			temp = arr[i];
			arr[i] = arr[symmetry];
			arr[symmetry] = temp;

			i += 1;
		}

		return_str = arr.join('');
		return return_str;
	}
}

class ReverseNumber
{
	static function main() : Void
	{
		var rev : Reverse = new Reverse();
		var num : String = "123456789098765432123456789";
		var res : String = rev.reverseNum(num);
		trace(res);
	}
}