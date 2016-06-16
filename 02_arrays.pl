# arrays are declared with '@'

my @movies = (
  "American History X",
  "Donnie Darko",
  "Eternal Sunshine of the Spotless Mind"
);

# read field from array, notice the $ rather than the @
# this is because one item is just a scalar
print $movies[0];

# arrays also support pushing & splicing
