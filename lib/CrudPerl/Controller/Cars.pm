package CrudPerl::Controller::Cars;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

CrudPerl::Controller::Cars - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path('/') :Args(0) {
    my ( $self, $c ) = @_;
    $c->res->redirect('/car');
}

=head2 list

Fetch all car objects and pass to cars/list.tt2 in stash to be displayed

=cut

sub list :Chained('index') :Path('/car') {
    my ($self, $c) = @_;

    my $sth = $c->model('Cars')->search({}, {order_by => 'title DESC'});();

    use DDP; p $sth;

    $c->stash(template => 'cars/list.tt2');
}


=encoding utf8

=head1 AUTHOR

leandro,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
