#!/usr/bin/perl

# A basic perl port of tac(opposite of cat) program.
use autodie;

@reverseArgv = reverse(@ARGV);
if ($#ARGV != -1){
    foreach $x (@reverseArgv)
    {
        if (! open FILE, $x)
        {
            die;
        }
        while (<FILE>)
        {
            print $_;
        }
    }
}
else
{
    @text = reverse(<STDIN>);
    print @text;
}
