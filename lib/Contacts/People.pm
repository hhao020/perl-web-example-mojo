package Contacts::People;
use Mojo::Base 'Mojolicious::Controller';

my %people = (
  joe => {
    email => 'joe@gmail.com',
    country => 'USA',
    phone => '052-1123123',
  },

  bob => {
    email => 'bob@yahoo.com',
    country => 'USA',
    phone => '03-1123123',
  },
);

sub list {
  my $self = shift;
  my @names = keys %people;

  $self->render(names => \@names);
}

sub view {
  my $self = shift;
  my $name = $self->param('name');

  die "Not found" if ! exists $people{$name};

  $self->render( name => $name, details => $people{$name} );
}

sub delete {
  my $self = shift;
  my $name = $self->param('name');

  die "Not found" if ! exists $people{$name};

  delete $people{$name};

  $self->redirect_to('/');
}

1;
