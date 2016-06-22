use 5.18.0;
use warnings;

my @array = qw(one two three four five);
my $ref = \@array; # a reference to the @array
say foreach @{$ref};
