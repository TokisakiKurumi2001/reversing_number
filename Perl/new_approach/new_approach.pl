sub reverse_num
{
	my $number = shift;
	my @arr = split('', $number);
	my $i = 0;
	my $len = scalar(@arr);
	my $symmetry = $len - 1 - $i;
	my $bound = int($len / 2);
	my $temp = '';

	for ($i = 0; $i < $bound; $i += 1)
	{
		$symmetry = $len - 1 - $i;
		$temp = $arr[$i];
		$arr[$i] = $arr[$symmetry];
		$arr[$symmetry] = $temp;
	}

	$return_str = join('', @arr);
	return $return_str;
}

print "Please insert a number: ";
$num = <STDIN>;
$res = reverse_num($num);
print $res;