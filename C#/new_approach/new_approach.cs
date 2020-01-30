using System;

namespace ReverseNumber
{
	class Program
	{
	    public class Reverse
	    {
	        public string ReverseNum(string num)
	        {
	            StringBuilder return_str = new StringBuilder(num);
	            int i = 0;
	            int len = num.Length;
	            int symmetry;
	            char temp;
	            
	            for (i = 0; i < len / 2; i++)
	            {
	                symmetry = len - 1 - i;
	                temp = return_str[i];
	                return_str[i] = return_str[symmetry];
	                return_str[symmetry] = temp;
	            }

	            return return_str.ToString();
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