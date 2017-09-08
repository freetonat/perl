#!/usr/bin/perl 

# last.pl

for ( 1..9 )
{
  print "fore $_\n";   # $_는 위에서 설명 드렸습니다.
  last unless $_ % 3;  # 3의 배수에서 블록 다음으로 넘어감.
  print "aft  $_\n";
}
print "End.\n";
