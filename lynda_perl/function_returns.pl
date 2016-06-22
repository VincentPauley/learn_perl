use 5.18.0;
use warnings;

# basic return

sub func1 {
  return 'this is a return';
}
say func1();

# return list of scalars

sub func2 {
  return (1, 2, 3, 4, 5);
}
say func2();

# list of scalar strings
sub func3 {
  return('the who', 'badfinger', 'led zepplin');
}

# loop through scalar list returns
say foreach func3();

# if you need to return more complicated things, you can use a reference
