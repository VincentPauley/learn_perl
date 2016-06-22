use 5.18.0;
use warnings;


func1('one', 'two', 'three');
func2('one', 'two', 'three');
func3('one', 'two', 'three');

sub func1 {
  my ($a, $b, $c) = @_; # assign 3 scalars to the default array variable
  say "$a $b $c";
}

# this produces the exact same result
sub func2 {
  my $a = shift;
  my $b = shift;
  my $c = shift;
  say "$a $b $c";
}
# the shift function uses the default array variable
# it slices an arg out of the array of args and passes to a vars

sub func3 {
  my @args = shift;
  say "@args";
}
