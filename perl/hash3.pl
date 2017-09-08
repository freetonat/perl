#!/usr/bin/perl
 # test.pl

$stufile = 'stufile';
$scorefile = 'scores';

$maxnamelength = 0;   # 이 두줄은 꼭 필요한 것은 아니지만
$maxexamno = 0;       # 명확히 해주기 위해 넣었습니다.

open( Hstufile, "<$stufile" )
    || die "Can\'t open $stufile.\n";  # 열어라, 아니면 죽어라.
while( <Hstufile> )  # $_ = <Hstufile>과 같습니다.
{
  chop;              # 맨 끝의 개행문자를 잘라 냅니다.
  last if( length( $_ ) < 3 );  # 3은 큰 의미는 없지만 3 자도
                        # 안되면 자료가 아닌것으로 간주합니다.
  ( $stuid, $name, $year ) = split( ':', $_ );
  $students{$stuid} = $name;  # hash
  $studyear{$stuid} = $year;  # hash
  if( $maxnamelength < length( $name ) )    # 가장 긴 이름에 맞
    {  $maxnamelength = length( $name );  } # 추어 출력.
}
close Hstufile;  # 닫는것 기억하시죠 ?

open( Hscorefile, "<$scorefile" )
    || die "Can\'t open $scorefile.\n";
while( <Hscorefile> )
{
  chop;
  last if( length( $_ ) < 3 );
  ( $stuid, $examno, $score ) = split;
  $scores{ $stuid, $examno } = $score;  # 키가 2개입니다.
                                        # $stuid는 중복되므로...
  if( $examno > $maxexamno )  # 학과가 몇개인지 셈.
     { $maxexamno = $examno; }
}
close Hscorefile;

printf( "%3s %-${maxnamelength}s %4s", "ID", "Name", "year" );
  # ${maxnamelength}처럼 { }를 사용하여 둘러 쌉니다.
  # 그렇지 않으면 $maxnamelengths 로 인식되겠죠. (s자 보이죠?)
foreach ( 1..$maxexamno )
  {  printf( "%4d", $_ );  }
printf( "%10s\n\n", 'Totals' );

foreach $stuid ( sort ( keys %students ) )  # sort함수는 배열내의
{                              # 각 요소간의 문자열 비교로 전체 
                               # 배열을 정렬한 배열을 리턴합니다.
  printf( "%3d %-${maxnamelength}s %4d", $stuid,
                      $students{$stuid}, $studyear{$stuid} );

  $total = 0;
  foreach $examno (1..$maxexamno)
  {
    printf( "%4d", $scores{ $stuid, $examno } );
    $total += $scores{ $stuid, $examno };
    $examtotal{ $examno } += $scores{ $stuid, $examno };
  }
  printf( "%10d\n", $total );
}

printf( "%3s %-${maxnamelength}s %4s", '', "Total", '' );
$total = 0;
foreach $examno (1..$maxexamno)
{
  printf( "%4d", $examtotal{ $examno } );
  $total += $examtotal{ $examno };
}
printf( "%10d\n\n", $total );
