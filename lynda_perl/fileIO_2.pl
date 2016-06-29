# using file handles

# filehandle: a special variable that is used to access a file, or stream

use 5.18.0;
use warnings;

my $filename = "friends.txt";

# open() is a built in function of perl which takes a few args
#
# 1) scalar for filehandle
# 2) file mode for the file to be openend in: 'read only', 'read write'
#    '<' == read
#    '>' == write to new file (save as, will overwrite existing file)
#    '>>' == append to existing file
#    '+<' == read AND write
#
# 3) filename (could hard code it as a string or call a scalar as in the example below)

open(my $fh, '<', $filename) or die "Cannot open file: $!";

print <$fh>; # angled brackets will treat filehandle as a listen

close $fh; # close file handle

# notice the simple pattern here, open the file, perform action, close the file.
