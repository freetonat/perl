#!/usr/bin/perl 


# param.pl

sub args {
  print "@_\n";
}

sub bigargs {
      # ( "Shut", "up,", "please !" )라는 배열이 넘어옵니다
  &args( "Hello", "there", "?" );
  print "@_\n";
}

&bigargs( "Shut", "up,", "please !" );
