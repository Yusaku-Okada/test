my @fred = (1..1000);
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";

sub total {
	my $sum = 0;

	foreach my $number (@_) {
		$sum += $number;
	}
	return $sum;
}
