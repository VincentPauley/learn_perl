# ROUTING

# the first argument passed to all actions is a mojolicious controller object, which contains both the HTTP request and RESPONSE

use Mojolicious::Lite;

# route to foo page
get '/foo' => sub {
  my $c = shift;
  $c->render(text=> 'Welcome to foo you fool.');
};

app->start;

# in this example, the base url will be: localhost:3000/
# and the URL will be: /foo

# combined they will render the text to the browser
