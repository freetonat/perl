#! /usr/bin/perl
 # writepipe2.pl

my $pid = open(FH, "| perl" ) || die "Writing failed: $!";
print "PID: $pid\n";
print FH qq!print "Hello\\n";!;
close FH; # 꼭, 꼭, 꼭, 꼭, 꼭!


 # backtick.pl

my $hello = `perl -e "print 'Hello'"`;
print "Answer: $hello\n";