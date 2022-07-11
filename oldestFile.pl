#!/bin/perl
$len = @ARGV;
if ($len == 0) {
    print "No arguments provided.\n";
}
else {
    $name = shift(@ARGV);
    $oldest =  -M $name;
    foreach $x (@ARGV)
    {
        $y = -M $x;
        print "$x:   ";
        print $y;
        print "\n";
        ($oldest, $name) = ($y, $x) if ($y > $oldest); 
    }
    print "The oldest file is: ";
    print "$name";
}

