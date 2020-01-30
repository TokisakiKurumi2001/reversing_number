using System;

namespace ReverseNumber
{
	class Program
	{
	    public class Reverse
	    {
	        public int ReverseNum(int num)
	        {
	            int sum, digit;
	            sum = 0;
	            while (num != 0)
	            {
	                digit = num % 10;
	                sum = sum * 10 + digit;
	                num /= 10;
	            }
	            return sum;
	        }
	    }
		static void Main(string[] args)
		{
			Reverse rev = new Reverse();
			int num = 0;
			num = Convert.ToInt32(Console.ReadLine());
			int res = rev.ReverseNum(num);
			Console.WriteLine(res);
		}
	}
}
