use Mojolicious::Lite;

# handle get request for root
get '/' => sub {
  my $c = shift;
  $c->render(text => 'Hello World');
};

# initialize app (defaults to port 3000)
app->start;

# note: morbo server will reload the page when changes are made, so there is no need to keep stopping and starting the server.
