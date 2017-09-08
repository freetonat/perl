#!/usr/bin/perl 

# test.pl

$scores{"engl"} = 75;
$scores{"math"} = 80;
$scores{"geo"}  = 65;

@keys = keys %scores;
print "@keys\n";
@values = values %scores;   # 바로 여기있군요 !
print "@values\n";

while( $#keys >= 0 ) # 으잉 ???  pop을 한번씩 할 때마다 마지막
{                    # 요소의 참조번호는 1씩 작아집니다. 당연하죠 ?
  print pop( @keys ), " : ", pop( @values ), "\n";
}      # 요 위의 pop들을 shift로 바꾸어서 실행해 보세요.
