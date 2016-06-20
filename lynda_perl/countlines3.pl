# a function in perl is often referred to as a subroutine

use 5.18.0;
use warnings;
use IO::File;

main(@ARGV); # @ARGV is a special array defined by perl to collect arguments that were used in the command line when the script was envoked.  In this example we are passing the value of @ARGV to the subroutine: main

sub main
{
  my $filename = shift || "frieds.txt"; # supplies a default if one was not give from the command line
  my $count = countlines($filename); # call countlines function with value from command line or default
  say "There are $count lines in $filename";
}



# returns number of lines in given file
sub countlines
{
    my $filename = shift;
    error("countlines: missing filename") unless $filename; # this is a cool conditional, it generates an error unless $filename has a value.  called a "post-fix conditional"

    # open file
    my $fh = IO::File->new($filename, "r") or
      error("Cannot open file $filename");

    # count the lines
    my $count = 0;
    $count++ while($fh->getline); # post-fix iterator

    $fh->close;
    # return result
    return $count;
}

sub error
{
  my $e = shift || "Unknown error";
  say "$0: $e";
  exit 0;
}

# notes: $0 is a built in variable that gives the pathname of the script
