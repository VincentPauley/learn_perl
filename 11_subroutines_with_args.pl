# function args are accessed using '@_'
# but remember you must call single values from arrays as scalars
# so first item is $_[0], the second is $_[1]


# Function definition
sub Average{
  # get number of args that were passed in
  $n = scalar(@_);
  $sum = 0; # define sum as a number before using

  # for each loop to go through all params
  foreach $item(@_) {
    $sum += $item;
  }
  $average = $sum / $n;

  print "Average is: ".$average;
}

# function call with params
Average(14, 30, 88);

# Note: can also pass in lists and hashes
# sending returns and using them is nearly identical to js, no need here
