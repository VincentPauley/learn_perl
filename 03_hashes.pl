# hashes are like objects from javascript, key/value pairs, defined with '%'

# syntax
my %person = (
  "name" => "Vincent",
  "job" => "Programmer",
  "favFood" => "Sushi"
);

# accessing data from hashes
print $person{'job'};
