use 5.18.0;
use warnings;

my $x = 1;
my $y = 1;

# if statement
if($x == 1) {
  say 'x equals 1';
}

# post fix conditional, unique to perl. good for little things (only good for single statements)
say 'true' if $x == 1;
