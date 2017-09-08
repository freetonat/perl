#! /usr/bin/perl

 # subst.pl

$_ = "Where is my baby, Oh Baby !";

if( $count = ( s/baby/lover/ ) )  # $_ =~ s/.... 로 인정됩니다.
  {  print "Replaced $count time(s).\n   \"$_\"\n";  }
else  {  print "Failed.\n";  }

print "Fore : $`\nAft  : $'\n";


 # banana.pl

$_ = <<ENDofSTR;
Banana !
What is banananana ?
Not banananananana, but banana.
Give me a banana.
How many bananas do you want ?
A BaNaNa.
ENDofSTR

if( $count = ( s/ba(na)+/pear/gi ) )
  {  print "Replaced $count time(s).\n$_\n";  }
else  {  print "Failed.\n";  }

print "Fore : $`\nMid  : $&\nAft  : $'\n";
  # 새로운게 나왔죠 ?  $&

  # re_tr.pl

$_ = "* is not \$";

if( $count = ( tr/*/#/ ) )
  { print "Translated $count char(s).\n$_\n"; }
else  { print "No translation.\n"; }