use 5.18.0;
use warnings;

my @array = (1,2,3,4,5,6,7);

my $count = @array; # assigning a scalar to the value of an array gives you the count of an array

say "There are $count items in the array";

# get one item
say "item 4 is @array[3]"; # notice syntax for pulling a value from the array
