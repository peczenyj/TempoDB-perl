use strict;
use warnings;
package TempoDB::Client;
{
  $TempoDB::Client::VERSION = '0.001';
}

use Moose;
use namespace::autoclean;

has key    => (is => 'ro', isa => 'Str',    required => 1);
has secret => (is => 'ro', isa => 'Str',    required => 1);
has host   => (is => 'ro', isa => 'Str',    default => $TempoDB::API_HOST );
has port   => (is => 'ro', isa => 'Number', default => $TempoDB::API_PORT );
has secure => (is => 'ro', isa => 'Bool',   default => 1);

sub create_series {}
sub get_series {}
sub update_series {}
sub read {}
sub read_id {}
sub read_key {}
sub delete_id {}
sub delete_key {}
sub write_id {}
sub write_key {}
sub write_bulk {}
sub increment_id {}
sub increment_key {}
sub increment_bulk {}

no Moose;
 __PACKAGE__->meta->make_immutable;