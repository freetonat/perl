#! /usr/bin/perl
 # next.pl

for ( 1..9 )
{
  print "fore $_\n";
  next unless $_ % 3;  # 3의 배수에서만 맨처음으로 돌아가서 계속.
  print "aft  $_\n";   # $_이 3의 배수이면 이 행은 실행되지 않음.
}
print "End.\n";


 # last.pl

for ( 1..9 )
{
  print "fore $_\n";   # $_는 위에서 설명 드렸습니다.
  last unless $_ % 3;  # 3의 배수에서 블록 다음으로 넘어감.
  print "aft  $_\n";
}
print "End.\n";