sub reverse_num
{
	my $num = shift;
	my @arr = split('', $num);
	my @rev_arr = reverse(@arr);
	my $return_str = join('', @rev_arr);
	return $return_str
}

print "Please insert a number: ";
$number = <STDIN>;
$res = reverse_num($number);
print $res;