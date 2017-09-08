#!/usr/bin/perl

# pwd.pl

do {
  print "Enter password : ";
  $password = <STDIN>;   # 조금 색다른 것들이 나오네요.
  chop( $password );
} while( $password ne "hack" ); # ne는 문자열을 비교하는 not equal
                                # 연산자라고 했습니다.
print "Well done !\n";