import java.util.Scanner;

public class Reverse
{
	public String reverseNum(String num)
	{
		StringBuilder str = new StringBuilder(num);
		str.reverse();
		return str.toString();
	}
}

class ReverseNumber
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