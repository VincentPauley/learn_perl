use 5.18.0;
use warnings;

my @array = qw(one two three for five);

for(my $i=0; $array[$i]; ++$i) {
  say "$i: " . $array[$i];
}

# the second portion of the for loop is a bit different than seen before.  as i becomes incremented, if the value of $array[$i] exists, the loop runs. if it doens't exist then the condition is false and the loop exits.  this is different then counting the length in the array as in other languages.
