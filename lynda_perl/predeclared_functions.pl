use 5.18.0;
use warnings;

# this pragma allows for our functions to be called as built ins
use subs qw(func);

sub func {
  say('with parentheses'); # despite calling this function with parentheses now, it still works fine. Even though this is a predeclared function
}

# func; <- this won't work without the 'use subs' call at the top

func;

# so basically you can write the 'use subs' pragma to treat your functions as predifined and they becom easier to use.  You can call predefined functions with parentheses like normal ones and no errors will ensue.

# remember that predefined functions can be given arguments without parenthses, like with: say 'hello';
