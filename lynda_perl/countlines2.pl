# within this example, one line will be read into memory at a time, allowing for much larger files to be read


use 5.18.0;
use warnings;
use IO::File; # IO file module

# create scalar for filename
my $filename = "friends.txt";

my $fh = IO::File->new($filename, "r");
# this conditional checks if the $fh object is false (which would indicate that the object construction failed)
if(! $fh) {
    print("Cannot open $filename ($!)\n");
    exit;
}

# count lines
my $count = 0;
while($fh->getline) {
    $count++;
}

# close and print
$fh->close;
print("There are $count lines in $filename\n");
