package WWW::TypePad::ObjectTypes;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

=pod

=head1 NAME

WWW::TypePad::ObjectTypes - ObjectTypes API methods

=head1 METHODS

=cut

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


=pod

=over 4


=item get_all

  my $res = $tp->object_types->get_all();

Get information about all of the object types in the API, including the names and types of their properties.

Returns ListE<lt>ObjectTypeE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>ObjectTypeE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_all {
    my $api = shift;
    my @args;
    my $uri = sprintf '/object-types.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub all {
    my $self = shift;
    Carp::carp("'all' is deprecated. Use 'get_all' instead.");
    $self->get_all(@_);
}

=pod



=item get

  my $res = $tp->object_types->get($id);

Get information about the selected object type and its properties.

Returns ObjectType which contains following properties.

=over 8

=item name

(string) The name of this object type. If this is an anonymous type representing the request or response of an action endpoint, this property is omitted.

=item parentType

(string) The name of the parent type. This property is omitted if this object type has no parent type.

=item properties

(arrayE<lt>ObjectPropertyE<gt>) The properties belonging to objects of this object type.


=back

=cut

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/object-types/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


=pod
 
=back

=cut
 
### END auto-generated




1;
