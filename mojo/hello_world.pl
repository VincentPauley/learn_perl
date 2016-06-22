use Mojolicious::Lite;

# handle get request for root
get '/' => sub {
  my $c = shift;
  $c->render(text => 'Hello World');
};

# initialize app (defaults to port 3000)
app->start;
