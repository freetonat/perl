#!/usr/bin/perl 
# hello.pl 

  print "Say yes or no : "; 
  $answer = <STDIN>; 
  chomp $answer; # $answer 뒤에 따라붙는 \n을 잘라냅니다. 
  if( $answer eq 'yes' ) {
    print <<EOY;
You said $answer.
I will keep going on.
EOY
  }
  else { print "You said 'No.'\n"; }
