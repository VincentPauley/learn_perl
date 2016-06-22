# the default variable: $_


use 5.18.0;
use warnings;

my @array = qw(one two three four five);

# this is what the default variable does
foreach $_ (@array) {
  say $_;
}

# this works exactly the same way, because even if you don't specify the $_ variable is used
foreach (@array) {
  say;
}

# perl will use the default variable in a few different cases when you don't specify a var.  Many predefined vars use the default variable
