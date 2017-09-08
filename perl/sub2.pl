#!/usr/bin/perl 
# return.pl

$max = &max( 10, 5 );
print "$max\n";

$max = &max( 8, 15 );
print "$max\n";

sub max {
  if( $_[0] > $_[1] )
    { return $_[0]; }
  $_[1];
}
