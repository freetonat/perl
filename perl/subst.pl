#!/usr/bin/perl 


 # subst.pl

$_ = "Where is my baby, Oh Baby !";

if( $count = ( s/baby/lover/ ) )  # $_ =~ s/.... 로 인정됩니다.
  {  print "Replaced $count time(s).\n   \"$_\"\n";  }
else  {  print "Failed.\n";  }

print "Fore : $`\nAft  : $'\n";
