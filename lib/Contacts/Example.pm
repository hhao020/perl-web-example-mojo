package Contacts::Example;
use Mojo::Base 'Mojolicious::Controller';

my $book = MyContacts->new();
$book->add_contact('Tom', { lives_in => 'USA' } );
$book->add_contact('Bob', { lives_in => 'USA' } );

sub stars {
  my $self = shift;
  my $count = $self->param('count') || 10;
  my $stars = '';

  for ( my $i=0; $i < $count; $i++ ) {
    $stars .= "*" x $i;
    $stars .= "\n";
  }

  $self->render( stars => $stars );
}


# This action will render a template
sub welcome {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message

  my @all = $book->contacts_by_country('USA');

  $self->render(
    msg => 'Welcome to the Mojolicious real-time web framework!',
    contacts => \@all,
  );
}

1;
