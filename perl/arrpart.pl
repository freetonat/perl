#!/usr/bin/perl 


 # arrpart.pl

@arr = ( 3, 7, "Not number", 8, "String" );
@arr2 = @arr[1..3];   # 배열에 배열을 복사합니다.
$n = 4;
print "@arr[1..$n]\n";
print "@arr2\n";
print "$arr2[1]\n";
