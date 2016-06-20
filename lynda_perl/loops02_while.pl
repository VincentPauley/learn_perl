# While loop

use 5.18.0;
use warnings;

my @array = qw(one two three four five);

while (@array) {
  say shift @array;
}

# here the value of the array has a value, 
