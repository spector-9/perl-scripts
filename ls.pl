#!/usr/bin/perl

chomp($dirName = <STDIN>);
if ($dirName =~ /^\s*$/) {
    $dirName = $ENV{"HOME"};
}
chdir $dirName or die "Cannot find directory: $!";
my @files = glob ".* *";

foreach $file (@files){
    print "$file\n";
}
