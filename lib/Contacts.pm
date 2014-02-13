package Contacts;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('people#list');
  $r->get('/view/:name')->to('people#view');
  $r->post('/delete')->to('people#delete');
}

1;
