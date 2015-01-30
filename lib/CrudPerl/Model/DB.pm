package CrudPerl::Model::DB;

use strict;
use warnings;
use parent 'Catalyst::Model::DBI';

__PACKAGE__->config(
  dsn           => 'DBI:Pg:dbname=crud',
  username      => 'piggme',
  password      => 'piggme',
  options       => { AutoCommit => 1 },
  loglevel      => 1
);

=head1 NAME

CrudPerl::Model::Cars - DBI Model Class

=head1 SYNOPSIS

See L<CrudPerl>

=head1 DESCRIPTION

DBI Model Class.

=head1 AUTHOR

leandro,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
