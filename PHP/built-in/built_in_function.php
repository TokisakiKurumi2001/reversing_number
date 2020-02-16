<?php
	function reverse_number(string $num) : string
	{
		return strrev($num);
	}

	$num = readline("Please insert a number: ");
	$res = reverse_number($num);
	echo $res;
?>