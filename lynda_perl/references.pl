use 5.18.0;
use warnings;

# reference is a scalar that refers to a value.  The reference can be another scalar, an array, a hash, or a funciton

# created with '\'

# Examples:
#
# $rs = \$scalar;
# $ra = \@array;
# $rh = \%hash;
# $rf = \&function;

# access the correct value by de referencing the the value:

#  ${$rs}
#  @{$ra}
#  %{$rh}
#  &{$rf}

# references are used to create complex data structures
