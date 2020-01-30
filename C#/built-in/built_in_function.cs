using System;

namespace ReverseNumber
{
	class Program
	{
	    public class Reverse
	    {
	        public string ReverseNum(string num)
	        {
	            char[] array = num.ToCharArray();
	            Array.Reverse(array);
	            string return_str = new string(array);
	            return return_str;
	        }
	    }
		static void Main(string[] args)
		{
			Reverse rev = new Reverse();
			string num = Console.ReadLine();
			string res = rev.ReverseNum(num);
			Console.WriteLine(res);
		}
	}
}