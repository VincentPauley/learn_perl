# get & post params are also avaliable through the Mojolicious controller object
use Mojolicious::Lite;

# /foo?user=whatever
get '/foo' => sub {
  my $c = shift;
  my $user = $c->param('user');

  # send response with $c
  $c->render(text => "Hello $user");
};

app->start;
