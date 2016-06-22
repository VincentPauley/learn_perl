use 5.18.0;
use warnings;


# state vars (sometimes called persistent variables) hold their value between function calls.  almost as if it were declared outside the function with global scope.
sub func {
  state $n = 10; # use 'state' rather than 'my'
  say ++ $n;
}

func();
func();
func();
func();
