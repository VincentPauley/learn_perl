

use 5.18.0;
use warnings;

# use a scalar var for name of file
my $filename = "friends.txt";

open(FH, $filename); # open the file
my @lines = <FH>; # read the file, assign each line to an item in an array
close(FH); # close file


my $count = scalar @lines; # number of lines in the file

# note: when you take the scalar value of an array it will return the numeric number of elements in the array
say "There are $count lines in $filename";



#note: the my keyword defines a variable to be lexically scoped.  Meaning that the variable is available to the file itself, or the codeblock that contains it

#scalar: contains one value
