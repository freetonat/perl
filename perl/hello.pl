#!/usr/bin/perl 
# hello.pl 

print "Hello World\n";


@heys = ( "Hello", "there", "I\'m", "O.K.", "\n" ); # 달팽이는 array 
print "@heys";
 # 배열을 풀어봅시다. (;를 빼 먹으면 안돼는 것 아시죠 ?) 
print @heys;
 # 그다지 우아하지 않은 모양의 출력을 볼수 있습니다. 
%fruits = ( "apple", 3, "pear", 5, "banana", 2 );
 # %는 잡동사니 hash ! 
print "%fruits\n"; # 어떻게 될까요 ?

print "The quotation mark is \".\n";

print "$#ARGV\n";


@arr = ( 8, 7, "Not a number", 6, "But a string" );
print "@arr\n";   # ""로 출력하면 각요소 사이에
                  # 공백이 들어간다고 했습니다.
