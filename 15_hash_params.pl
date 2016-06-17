use strict;

sub PrintHash{
   my (%args) = @_;

   # pull value from the hash from key name, notice its a scalar
   print "Name: ".$args{name}."\n\n";

   print "Age: ".$args{age};



}
my %hash = ('name' => 'Tom', 'age' => 19);

# Function call with hash parameter
PrintHash(%hash);
