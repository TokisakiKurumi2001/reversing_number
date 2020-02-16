<?php
	function reverse_number(int $num) : int
	{
		$digit = 0;
		$sum = 0;

		while ($num != 0)
		{
			$digit = $num % 10;
			$sum = $sum * 10 + $digit;
			$num = intdiv($num, 10);
		}

		return $sum;
	}

	// 1234567890987654321
	$num = readline("Please insert a number: ");
	$res = reverse_number($num);
	echo $res;
?>