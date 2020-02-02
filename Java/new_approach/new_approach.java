import java.util.Scanner;

public class Reverse
{
	public String reverseNum(String num)
	{
		char[] number = num.toCharArray();
		StringBuilder return_str = new StringBuilder();
		int len = number.length;
		int bound = len / 2;
		int i = 0;
		int symmetry = len - 1 - i;
		char temp;

		for (i = 0; i < bound; i++)
		{
			symmetry = len - 1 - i;
			temp = number[i];
			number[i] = number[symmetry];
			number[symmetry] = temp;
		}

		return_str.append(number);
		return return_str.toString();
	}
}

class ReverseNum
{
	public static void main(String[] args)
	{
		Scanner in = new Scanner(System.in);
		Reverse rev = new Reverse();
		String num = in.next();
		String res = rev.reverseNum(num);
		System.out.println(res);
	}
}