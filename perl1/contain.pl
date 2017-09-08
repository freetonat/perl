#! /usr/bin/perl

 # contain.pl

$long = "Tell me what\'s up.";  # '는 특수한 문자이므로 \를 사용
                                # 하여 excape시킵니다.
if( $long =~ /hat/ )   # 보셨죠 ? 문자열 $long에 hat이라는 문자열
{                      # 이 들어있는지 시험합니다.
  print "Yes, it contains \"hat\".\n"; # "도 escape시켜야 됩니다.
}
else
{
  print "No, it does not.\n";
}

# contain2.pl

$long = "I wrote it at the beginning.";
print $long, "\n";

if( $long =~ /h*at/ )   # /*at/, /a.t/도 실험해 보세요.
  {  print "Yes, it contains.\n";  }
else
  {  print "No, it does not.\n";  }