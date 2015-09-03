use 5.010;

greet ( "Fred" );
greet ( "Barney" );
greet ( "Wilma" );
greet ( "Betty" );

sub greet {
=pod
#412_4
	state $beforeName;
	my $name = shift @_;
	
	print "Hi $name\! ";

	if(defined@beforeName)){
		print "$beforeName is also here!\n";
		
	} else {
		print "You are the first one here!\n";

	}

	$beforeName = $name;
=cut

#412_5
	state $names;
	my $name = shift @_;
	
	print "Hi $name\! ";

	if(@names){
		print "I've seen : @names\n";
		
	} else {
		print "You are the first one here!\n";

	}

	push @names, $name;

}