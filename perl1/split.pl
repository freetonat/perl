#! /usr/bin/perl

 # split.pl

$theData = "Jongpil+male+32+Seoul, Korea";
@dataArray = split( /\+/, $theData ); # +는 특수효과가 있습니다.
                                      # 따라서 \ 로 escape합니다.
print "$theData\n@dataArray\n";  # 배열을 따옴표 ""에 넣고 print
                                 # 하면 요소간에 공백이 한자씩
                                 # 들어간다 했지요 ?
 # arrsplit.pl

@theData = (
  "Jongpil    math     75",
  "Inhyon     math     90",
  "Jungkwang  english 100"
);

foreach (@theData) {      # foreach $_ (@theData) {
  print;                  # print $_;
  print "\n";             # foreach, $_ 기억하시죠 ?
}

@tempArr;

foreach (@theData) {         # foreach (@theData) {
  @tempArr = split( / +/ );  #   @tempArr = split( / +/, $_ );
  printf( "%-10s %-7s %3s\n",
           $tempArr[0], $tempArr[1], $tempArr[2] );
}