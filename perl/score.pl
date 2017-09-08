#!/usr/bin/perl 

# score.pl

$scores{"engl"} = 75;   # hash의 각 요소의 값에는 당연히
$scores{"math"} = 80;   # $가 붙습니다. 일반변수이니까요.
$scores{"geo"}  = 65;

foreach ( keys( %scores ) )  # 여기서는 hash그 자체를 가리키므로
{                            # % 부호가 붙습니다.
  print "$_ : ", $scores{"$_"}, "\n";
}
