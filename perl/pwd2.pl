#!/usr/bin/perl 


 # pwd2.pl

$count = 0;
for ( 1..10 )
{
  print "Type password ($_): ";
  chop( $password = <STDIN> );
  if( $password eq "hack" )
  {
    print "Right !\n";
    last;
  }
  chop($password);
  if( $password eq "hac" )
  {
    last if( $count++ >= 3 );
    print "Almost correct. try more\n";
    redo;
  }
}

print "End.\n";
