#! /usr/bin/perl
 # param.pl
=for comment

sub args {
  print "@_\n";
}

sub bigargs {
      # ( "Shut", "up,", "please !" )라는 배열이 넘어옵니다
  &args( "Hello", "there", "?" );
  print "@_\n";
}

&bigargs( "Shut", "up,", "please !" );

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

 # oooops.pl

$dum = "Very very important data";

$max = &max( 10, 5 );
print "10, 5 - $max\n";

$max = &max( 9, 14 );
print "9, 14 - $max\n";

print "$dum\n";   #  oooops !!

sub max {
  $dum = ( $_[0] > $_[1] ) ? $_[0] : $_[1];
}
=cut

 # local.pl

$dum = "Very very important data";

$max = &max( 10, 5 );
print "10, 5 - $max\n";

$max = &max( 9, 14 );
print "9, 14 - $max\n";

print "$dum\n";  # Bueno ! No problemo !

sub max {
  local ( $dum) = ( $_[0] > $_[1] ) ? $_[0] : $_[1];
     # 이 $dum은 바깥의 $dum과는 다릅니다.
}