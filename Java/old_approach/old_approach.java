import java.util.Scanner;

public class Reverse
{
	public int reverseNum(int num)
	{
		int digit = 0;
		int sum = 0;
		while (num != 0)
		{
			digit = num % 10;
			sum = sum * 10 + digit;
			num /= 10;
		}
		return sum;
	}
}

class ReverseNumber
{
	public static void main(String[] args)
	{
		Scanner in = new Scanner(System.in);
		Reverse rev = new Reverse();
		int num = in.nextInt();
		int res = rev.reverseNum(num);
		System.out.println(res);
	}
}