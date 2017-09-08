#!/usr/bin/perl
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

printf( "|%-15s|%04d|%10.3f|\n", "Thank you", 50, 524.62 );
