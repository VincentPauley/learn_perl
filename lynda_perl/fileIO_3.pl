# IO file module provides an object-oriented interface for standard file and stream functions.  It is the most common way for file IO in perl

use 5.18.0;
use warnings;
use IO::File;

my $filename = 'friends.txt';


# remember that '->' is how you access properties/methods inside of an object in perl
my $file = IO::File->new("< $filename") or die "cannot open file: $!";
print while <$file>;
