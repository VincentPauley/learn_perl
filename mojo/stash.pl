# STASH

# stash can be accessed from the Mojolicious::Controller, and it is used to pass data to templates.  A few values like 'template', 'text', and 'data' are reserved and what you are using in 'render'

use Mojolicious::Lite;

get '/foo' => sub {
  my $c = shift;
  $c-> stash(one => 23);
  $c-> render(template => 'magic', two => 24);
};

app->start;

# templates are defined after the __DATA__ pragma

__DATA__

@@ magic.html.ep
The magic numbers are <%= $one %> and <%= two %>.
