#! /usr/bin/perl
# score.pl

$scores{"engl"} = 75;   # hash의 각 요소의 값에는 당연히
$scores{"math"} = 80;   # $가 붙습니다. 일반변수이니까요.
$scores{"geo"}  = 65;

foreach ( keys( %scores ) )  # 여기서는 hash그 자체를 가리키므로
{                            # % 부호가 붙습니다.
  print "$_ : ", $scores{"$_"}, "\n";
}

print "\n";
 # test.pl

$scores{"engl"} = 75;
$scores{"math"} = 80;
$scores{"geo"}  = 65;

@keys = keys %scores;
@values = values %scores;   # 바로 여기있군요 !

while( $#keys >= 0 ) # 으잉 ???  pop을 한번씩 할 때마다 마지막
{                    # 요소의 참조번호는 1씩 작아집니다. 당연하죠 ?
  print pop( @keys ), " : ", pop( @values ), "\n";
}      # 요 위의 pop들을 shift로 바꾸어서 실행해 보세요.
print "\n";

 # test.pl

$scores1{"engl "} = 75;
$scores1{"math "} = 80;
$scores1{"geo  "} = 65;
$scores1{"music"} = 98;

@arr = %scores1;
print "\@arr : @arr\n";
$count = ( $#arr + 1 ) / 2;
print "Number of data in %scores : $count\n";

%scores2 = @arr;
foreach ( keys %scores2 ) { print "$_ : ", $scores2{"$_"}, "\n"; }

print "\n";
 # each.pl

%scores = ( "engl", 75, "math", 80,
            "geo", 65,  "music", 98 );

while( ($key, $value) = each %scores ) {
  print "$key :\t$value\n";
}