use 5.18.0;
use warnings;

my $x = 'three';
my $z = 'seven';
my @array = qw(one two three four five six seven eight);

while(@array) {
  my $y = shift @array;
  # explicitly skip an item in the array
  next if $x eq $y;
  # terminate the loop if a condition is met
  last if $z eq $y;
  say $y;
}
