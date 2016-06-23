use 5.18.0;
use warnings;

# create a normal array
my @array = qw(uno dos tres quatro cinco ses siete ocho nueve dies);

# create a reference to the array to
my $reference = \@array;

# to access reference, need to de-reference the array by using the {} with the correct operator
say foreach @{$reference};

####################################################
print "\n\n";

# one quick use is you can create a reference to an anonymous array, thus never needing to actually initialize the array

my $ref = [ qw(one two three four five) ]; # reference to anonymous array

# change items from a reference
${$ref}[2] = 'I made a change';

say foreach @{$ref};


# can access items the same way as above
print "\n\n${$ref}[0]";


# note: CANNOT create a reference to a list
