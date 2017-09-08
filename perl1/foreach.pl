#! /usr/bin/perl
# hash.pl

%myhash = (
  "apple", 3,
  "pear", 10,
  "banana", 4,
  "monkey", 2,
  );

$total = 0;
foreach $eachKey ( keys %myhash ) # key라는 함수는 hash의 '키'들
                                  # 만을 모아 배열로 묶어줍니다.
{
  print "$eachKey\t", $myhash{$eachKey}, "\n";
  $total += $myhash{$eachKey};
}
print "\nTotal\t$total\n";   # \t는 탭입니다.