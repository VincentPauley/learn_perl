use 5.18.0;
use warnings;

# hash references are extremely common in perl, sometimes more common even than named hashes

# named hash
my %hash = (
  one => 'uno',
  two => 'dos',
  three => 'tres',
  four => 'quatro',
  five => 'cinco'
);

my $ref = \%hash; # reference to hash

foreach my $k (sort keys %{$ref}) {
    say "$k : ${$ref}{$k}";
}



# reference to anonymous hash (initialized inside of {} rather than () )
my $anonymous_ref = {
  one => 'Bruins',
  two => 'Lightning',
  three => 'Flyers',
  four => 'Red Wings',
  five => 'Maple Leafs'
};

print $anonymous_ref->{three} # de-reference


# note the arrow syntax, it is far more common and the confusting thing is that it doesn't always refer to assignment. it points to whatever specific part of the reference you want, weahter you are trying to write to it or read it.

# ALSO: note that when we declare a reference to an ANONYMOUS hash using the {}, there is no need for that silly backslash 





# sort will sort keys alphabetically
