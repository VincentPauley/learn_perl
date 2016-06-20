# constants

use 5.18.0;
use warnings;

# perl does not come with constants, but there is a pragma for defining them

# constant definition (similar to a hash)
use constant PI => 3.14159;

# you can also define multiple constants at once
use constant {
  MOTHER => "Kellie",
  TRUE => 1,
  FALSE => 0
};

say PI;
say FALSE;
