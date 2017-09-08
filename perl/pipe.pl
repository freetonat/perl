#!/usr/bin/perl 


 # pipe.pl

open(FH, "grep 'GET /perl/perl-6.a.html' access_log |" ) || die "Reading failed: $!";
my( $line, @array );
while( $line = <FH> ) {
    if( $line =~ /\b201\.30\.40\.1[2-9]\d\b/ ) { # \b는 boundary(경계), \d는 숫자입니다.
	push @array, $line;
    }
}
close FH; # 반드시, 반드시, 반드시, 반드시, 반드시, 해야 합니다.

print "IP 주소 201.30.40.120~199까지 접속한 기록\n";
foreach ( @array ) {
    print; # 특수변수 $_ 를 출력함.
}
