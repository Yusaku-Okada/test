my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney =above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub above_average {
	$average = get_average ( @_ );
	my @result;
	foreach $num ( @_ ){
		if($num > $average){
			push @result, $num;
		}
	}
	return @result;
}

sub get_average {
	$total_num = @_;
	$sum = 0;
=pod
	while ( my($index, $value) = each @_){
		print "$index : $value\n";
	}
=cut
	foreach $num ( @_ ){
		$sum += $num;
	}
	return $sum / $total_num;
}