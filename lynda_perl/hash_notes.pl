use 5.18.0;
use warnings;

# has definition, '=>' is referred to as a 'fat comma'
my %hash = (
  name => 'Johnny',
  occupation => 'programmer',
  language => 'German'
);

# add a new key/value to the hash:
$hash{girlfriend} = 'Jenny';

# update a value within the hash:
$hash{occupation} = 'Bartender';

# delete pair from the hash
delete $hash{language};

# loop through all keys & values in a hash
while(my ($key, $value) = each %hash) {
  say "$key -> $value";
}

print "\n\n";



# note: the each portion assigns each pair's key and value to %key and $value




# since there is no ordering in a hash, no particular order of the print oout
# can be relied on
