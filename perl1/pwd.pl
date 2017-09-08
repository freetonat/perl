#! /usr/bin/perl
 # pwd.pl

do {
  print "Enter password : ";
  $password = <STDIN>;   # 조금 색다른 것들이 나오네요.
  chop( $password );
} while( $password ne "hack" ); # ne는 문자열을 비교하는 not equal
                                # 연산자라고 했습니다.
print "Well done !\n";

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
    print "$count\n";
    last if( $count++ >= 3 );
    print "$count\n";
    print "Almost correct. try more\n";
    redo;
  }
}

print "End.\n";