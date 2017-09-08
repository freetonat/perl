#! /usr/bin/perl

 # prog1.pl

require 'library.pl';  # library.pl에 담긴 subroutine을 쓰려면 미리
                       # 요청을 해야합니다. 안 그러면 혼납니다.
print "Calling subroutines from prog1 !\n";
&sub1;
&sub2;

# prog2.pl

require 'library.pl';  # 요청을 합니다.

print "Calling subroutines from prog2 !\n";
sub1(); # &sub1 대신 이렇게도.
sub2();