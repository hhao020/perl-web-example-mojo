package MyContacts;
use strict;
use warnings;
use v5.14;

sub new {
  my ( $cls ) = @_;
  my $self = {};
  bless $self, $cls;
}

sub add_contact {
  my ( $book_ref, $name, $data_ref ) = @_;
  $book_ref->{$name} = $data_ref;
}

sub contacts_by_country {
  my ( $book_ref, $country ) = @_;

  grep { $book_ref->{$_}->{lives_in} eq $country } keys %$book_ref;
}



1;
