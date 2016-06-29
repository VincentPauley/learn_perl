#!/usr/bin/perl
# test.cgi by Bill Weinman [http://bw.org/]
# Free Software: Use and distribution under the same terms as perl

use strict;
use warnings;
use CGI;

my $version = "5.1";

# not sure why these need to be printed out
print foreach (
  "Content-Type: text/plain\n\n",
  "BW Test Version $version\n",
  "Copyright 1995-2009 The BearHeart Group, LLC\n\n",
  "Versions:\n===============\n",
  "perl: $]\n",
  "CGI: $CGI::VERSION\n"
);

# create a reference to the hash args
my $q = CGI::Vars();

# access specific fields from the hash (using arrow syntax)
my $user = $q->{user};
my $email = $q->{email};

print "\nForm Data:\n=========\n";
print "User: $user\n";
print "Email: $email\n\n";




print "Environment Variables:\n===============\n";
foreach my $k (sort keys %ENV) {
  print "$k [$ENV{$k}]\n";
}

# keep in mind that if you use GET to submit the form, the query string will be in the environment variable: QUERY_STRING, via: ?varname=value&varname2=value

# the CGI::Vars() library is taking the post request and putting it into the hash for you
