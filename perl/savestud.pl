#!/usr/bin/perl 


 # savestud.pl

$stufile = 'stufile';

$students{ 123 } = "Jongpil";   # students는 hash 입니다.
$students{ 246 } = "Inhyon";    # 따라서 각 요소를 지정하기 위하여
$students{ 357 } = "Jungkwang"; # {}를 사용합니다.
$students{ 212 } = "Kwanghoon"; # 숫자가 들어간다고 해서 배열로
                                # 착각해서는 안되어요.
$studyear{ 123 } = 2;
$studyear{ 246 } = 1;
$studyear{ 357 } = 3;
$studyear{ 212 } = 2;
  # 이제 두 개의 hash %students와 %studyear가 만들어졌습니다.

open( Hstufile, ">$stufile" ) || die "Can\'t open $stufile";
  # 파일을 쓰기 모드(>)로 열었습니다.
foreach ( keys %students )  # keys 함수는 hash의 key들만을 모아서
{                           # 배열로 만들어 return한다고 했습니다.
  $stud[0] = $_;      # $_ 기억하시죠 ?
  $stud[1] = $students{$_};
  $stud[2] = $studyear{$_};

  $string = join( ':', @stud );  # : 부호로 join합니다.
  $string .= "\n";               # ID와 학년, 그리고 사람 이름에
                                 # 들어갈리 없는 부호니까요.
  print Hstufile $string;  # 핸들을 통해서 파일에 프린트합니다.
}

close Hstufile;  # 꼭, 닫읍시다.
