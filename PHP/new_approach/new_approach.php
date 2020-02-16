<?php
	function reverse_number(string $num) : string
	{
		$len = strlen($num);
		$bound = intdiv($len, 2);
		$i = 0;
		$symmetry = $len - 1 - $i;
		$temp = '';

		for ($i = 0; $i < $bound; $i++)
		{
			$symmetry = $len - 1 - $i;
			$temp = $num[$i];
			$num[$i] = $num[$symmetry];
			$num[$symmetry] = $temp;
		}

		return $num;
	}

	$num = readline("Please insert a number: ");
	$res = reverse_number($num);
	echo $res;
?>