#!/usr/bin/perl 

# mytype3.pl

if( $#ARGV < 0 )
  { die "Supply a file name, please.\n"; }
if( $#ARGV > 0 )
  { die "Too many parameter.\n"; }

$fileName = shift( @ARGV );

if( -d $fileName )
  { die "$fileName is a directory.\n"; }

-e $fileName || die "$fileName is not exist.\n";

-T $fileName || die "$fileName is not a text file.\n";

open( fileHandle, $fileName ) || die "Cannot open $fileName.\n";
foreach $aLine (<fileHandle>)
{
  print $aLine;
}
close( fileHandle );  # 꼭, 꼭, 꼭, 꼭 닫읍시다.
