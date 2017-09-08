#!/usr/bin/perl 


 # test.pl

$scores{"engl "} = 75;
$scores{"math "} = 80;
$scores{"geo  "} = 65;
$scores{"music"} = 98;

@arr = %scores;
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
