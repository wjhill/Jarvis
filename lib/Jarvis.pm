use strict;
use warnings;
package Jarvis;

use Carp;
use English qw{ -no_match_vars };

use Moose;
use MooseX::NonMoose;

extends 'File::Monitor';

use Cwd;
use File::stat;

has 'location' => (
	is	=> 'rw',
	isa	=> 'Str',
);

#around watch => sub {
#	my $original	= shift;
#	my $self	= shift;
#	if ( $self->location() = undef ) {
#		$self->location( getcwd() );
#	}
#	check_existence( $self->location() );
#	$self->$original->watch( $self->location() );
#};
#
#sub process {
#	my $self = shift;
#	check_existence( $self->location() );
#}	
#
#sub check_existence {
#	my $location_name	= shift;
#	my $location_check	= stat( $location_name );
#	if ( not( -e $location_check ) ) {
#		croak 'Location not found';
#	}
#}
	
         no Moose;
         # no need to fiddle with inline_constructor here
         __PACKAGE__->meta->make_immutable;

1;
