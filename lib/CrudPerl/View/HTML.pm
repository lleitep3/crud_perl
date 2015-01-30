package CrudPerl::View::HTML;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt2',
    render_die => 1,
);

=head1 NAME

CrudPerl::View::HTML - TT View for CrudPerl

=head1 DESCRIPTION

TT View for CrudPerl.

=head1 SEE ALSO

L<CrudPerl>

=head1 AUTHOR

leandro,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
