#! /usr/bin/perl
 # mytype1.pl
# 도스의 type, 유닉스의 cat 명령을 흉내내어 봅시다.

$fileName = "hello.pl";

if( -d $fileName )  #  -d $fileName && die "$fileName ...";와 같음.
  { die "$fileName is a directory.\n"; }
  # 디렉토리를 type할 수는 없죠.
  # die 함수는 메세지를 출력하고 프로그램 실행을 중단시킵니다.

-e $fileName || die "$fileName is not exist.\n";

-T $fileName || die "$fileName is not a text file.\n";

open( fileHandle, $fileName ) || die "Cannot open $fileName.\n";
@allLines = <fileHandle>;   # 핸들을 통하여 모든 문자열을 배열로 읽어 들입니다. 파일이 너무 크면 좀 문제가 있겠죠.
close( fileHandle ); # 다 읽었으니 꼭 닫습니다. !!!!!

 print @allLines; # 화면에 출력합니다.