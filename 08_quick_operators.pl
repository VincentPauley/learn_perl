# operators in perl are complex, there a different ones that must be used depending on if the
# comparison is string based or numeric

# string ones are a bit odd:

my $stringOne = 'turkey';
my $stringTwo = 'turkeys';

if($stringOne lt $stringTwo) {
  print "first string is smaller";
} else {
  print "first string is bigger";
}

# many more operators, but learn by use case
