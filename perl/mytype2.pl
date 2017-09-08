#!/usr/bin/perl 

# mytype2.pl
# 도스의 type, 유닉스의 cat 명령을 흉내내어 봅시다.

if( $#ARGV < 0 )
  { die "Supply a file name, please.\n"; }
if( $#ARGV > 0 )
  { die "Too many parameter.\n"; }

$fileName = shift( @ARGV );

if( -d $fileName )
  { die "$fileName is a directory.\n"; }
  # 디렉토리를 type할 수는 없죠.
  # die 함수는 메세지를 출력하고 프로그램 실행을 중단시킵니다.

-e $fileName || die "$fileName is not exist.\n";

-T $fileName || die "$fileName is not a text file.\n";

open( fileHandle, $fileName ) || die "Cannot open $fileName.\n";
while( $aLine = <fileHandle> ) # 한번에 한줄씩 읽습니다.
{
  print $aLine;
}
close( fileHandle );  # 다 읽었으니 꼭 닫습니다. !!!!!
