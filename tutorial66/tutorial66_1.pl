
print "input name (fred, barney, wilma)\n:";
my $name = <STDIN>;
chomp $name;

my %hash = (
	fred	=> 'flintstone',
	barney	=> 'rubble',
	wilma	=> 'flintstone',
);

print "$name $hash{$name}!";