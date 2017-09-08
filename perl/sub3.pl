#!/usr/bin/perl 

 # oooops.pl

$dum = "Very very important data";

$max = &max( 10, 5 );
print "10, 5 - $max\n";

$max = &max( 9, 14 );
print "9, 14 - $max\n";

print "$dum\n";   #  oooops !!

sub max {
  local ($dum) = ( $_[0] > $_[1] ) ? $_[0] : $_[1];
}
