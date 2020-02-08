sub reverse_num
{
	my $num = shift;
	my $sum = 0;
	my $digit = 0;

	while ($num != 0)
	{
		$digit = $num % 10;
		$sum = $sum * 10 + $digit;
		$num = int($num / 10);
	}

	return $sum;
}

print "Please insert a number: ";
$input = <STDIN>;
$number = int($input);
$res = reverse_num($number);
print $res;