#! /usr/bin/perl
 # arrpart.pl

@arr = ( 3, 7, "Not number", 8, "String" );
@arr2 = @arr[1..3];   # 배열에 배열을 복사합니다.
$n = 4;
print "@arr[1..$n]\n";
print "@arr2\n";
print "$arr2[1]\n";

 # shiftpop.pl

@arr = ( 1, 2, 3, 4, 5, 6 );
$first = shift @arr;
print "$first @arr\n";
$second = shift @arr;
print "$first $second @arr\n";
$last  = pop @arr;
print "$first $second @arr $last\n";

 # boom.pl

@arr = ( 1, 2, 3, 4, 5, 6 );
while( $elem = pop( @arr ) )  # pop을 shift로 바꾸어서도 해보세요.
  {  print "$elem\n";  }
print "BOOM ! @arr\n";


 @arr = ( 1, 2, 3, 4, 5, 6 );
$first = shift( @arr );
push( @arr, "last" );
push( @arr, "again", "more" );
@arr3 = ( "not", "again" );
push( @arr, @arr3 );
push( @arr, ( "Oh,", "stop", "it !" ) );
print "$first @arr\n";