#!/usr/bin/perl
# test.cgi by Bill Weinman [http://bw.org/]
# Free Software: Use and distribution under the same terms as perl

use strict;
use warnings;
use CGI;

my $version = "5.1";

print foreach (
  "Content-Type: text/plain\n\n",
  "BW Test Version $version\n",
  "Copyright 1995-2009 The BearHeart Group, LLC\n\n",
  "Versions:\n===============\n",
  "perl: $]\n",
  "CGI: $CGI::VERSION\n"
);


# this is how you print a single environment var, they are predefined
print "Server Software: $ENV{SERVER_SOFTWARE}";

# captures form values submitted via post request
my $q = CGI::Vars();# this puts query string into a hash
print "\nCGI Values:\n===============\n";
foreach my $k (sort keys %$q) {
  print "$k [$q->{$k}]\n";
}

print "Environment Variables:\n===============\n";
foreach my $k (sort keys %ENV) {
  print "$k [$ENV{$k}]\n";
}

# so much learning
