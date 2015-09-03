=pod
use strict;
use warnings;

my %nameCount;

if ( !open( TEST, "<", "tutorial66_2.txt" )){
	print "error";
}

while (<TEST>){
	print;
	chomp;
	$nameCount{$_} += 1;
}

while (my($index, $value) = each %nameCount){
	print "$index : $value\n";
}
=cut


use strict;
use warnings;

my %nameCount;

open(my $fh, "<", 'tutorial66_2.txt')
 or die "Cannot open : $!";

while (my $line = readline $fh) {
 chomp $line;
 $nameCount{$line} += 1;
}

my @key = keys (%nameCount);
print "@key";

while (my($index, $value) = each %nameCount){
 print "$index : $value\n";
}
