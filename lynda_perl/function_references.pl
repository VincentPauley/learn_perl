use 5.18.0;
use warnings;

my $ref = \&func;
$ref->(); # de-reference the function and call it through the reference

sub func {
  say "this is a wonderful function";
}

# can also initialize the function directly from a reference

my $anonymous = sub {
  say "this function is anonymous";
}; # notice semi-colon when it is initialized as a reference

$anonymous->();


# even possible to return another anonymous function

# closures are a subject for the next file, but just note that if you return a function that has local variables, those variables will still be enclosed within the call because the anonymous function 'enclosed' them
