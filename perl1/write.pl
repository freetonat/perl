#! /usr/bin/perl

# write.pl
# perltest.htm이라는 파일이 없다고 가정하고 프로그램을 합니다.
# 있는 경우에는 덮어씁니다.

open( fileHandle, ">perltest.html" ) || die "Failed opening.\n";
print fileHandle <<END_HTML;  # 다를 바가 없지요 ?
<html><head><title>test of writing</title></head>
<body>
<h1>Test of writing file in PERL</h1>
Hello. I am writing something to a file.<P>
Be careful to close the file after completion of writing.<P>
</body>
</html>
END_HTML

close( fileHandle );