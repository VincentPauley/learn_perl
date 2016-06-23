use 5.18.0;
use warnings;

# reference to anonymous array
my $ref = [ qw(luke leia han lando anakin) ];




# better to access elements like this:
$ref->[4] = "Darth Vader";

print $ref->[4]; # much more common
