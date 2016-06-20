use 5.18.0;
use warnings;

my @array = qw(one two three for five);

# read from array
foreach my $s (@array) {
  say $s;
}

# its also possible to update an array from a foreach, by manipulating the scalar var associated from the array
foreach my $item (@array) {
  $item .= '-foo';
}

# shorthand for reading an entire array
say foreach @array;

# first arg is a scalar var, in this case $s (which will hold the value from the array)
# the second var is the array
