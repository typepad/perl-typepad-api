package WWW::TypePad::Nouns;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

=pod

=head1 NAME

WWW::TypePad::Nouns - Nouns API methods

=head1 METHODS

=cut

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


=pod

=over 4


=item get_all

  my $res = $tp->nouns->get_all();

Get information about all of the nouns in the API, along with their sub-resources and filters.

Returns ListE<lt>EndpointE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>EndpointE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_all {
    my $api = shift;
    my @args;
    my $uri = sprintf '/nouns.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub all {
    my $self = shift;
    Carp::carp("'all' is deprecated. Use 'get_all' instead.");
    $self->get_all(@_);
}

=pod



=item get

  my $res = $tp->nouns->get($id);

Get information about the selected noun, its sub-resources and their filters.

Returns Endpoint which contains following properties.

=over 8

=item name

(string) The name of the endpoint, as it appears in URLs.

=item supportedMethods

(mapE<lt>stringE<gt>) A mapping of the HTTP methods that this endpoint accepts to the docstrings describing the result of each method.

=item supportedQueryArguments

(setE<lt>stringE<gt>) The names of the query string arguments that this endpoint accepts.

=item formatSensitive

(boolean) CE<lt>trueE<gt> if this endpoint requires a format suffix, or CE<lt>falseE<gt> otherwise.

=item propertyEndpoints

(arrayE<lt>EndpointE<gt>) For noun endpoints, an array of property endpoints that it supports.

=item actionEndpoints

(arrayE<lt>EndpointE<gt>) For noun endpoints, an array of action endpoints that it supports.

=item canHaveId

(boolean) For noun endpoints, CE<lt>trueE<gt> if an id part is accepted, or CE<lt>falseE<gt> if the noun may only be used alone.

=item canOmitId

(boolean) For noun endpoints, CE<lt>trueE<gt> if the id part can be ommitted, or CE<lt>falseE<gt> if it is always required.

=item parameterized

(boolean) For filter endpoints, CE<lt>trueE<gt> if a parameter is required on the filter, or CE<lt>falseE<gt> if it's a boolean filter.

=item filterEndpoints

(arrayE<lt>EndpointE<gt>) For endpoints that return lists, an array of filters that can be appended to the endpoint.

=item resourceObjectType

(ObjectType) The type of object that this endpoint represents for CE<lt>GETE<gt>, CE<lt>PUTE<gt> and CE<lt>DELETEE<gt> operations. This property is omitted for action endpoints, as they do not represent resources.

=item postObjectType

(ObjectType) The type of object that this endpoint accepts for CE<lt>POSTE<gt> operations. This property is omitted if this endpoint does not accept CE<lt>POSTE<gt> requests.

=item responseObjectType

(ObjectType) For action endpoints, the type of object that this endpoint returns on success. If the endpoint returns no payload on success, or if this is not an action endpoint, this property is omitted.


=back

=cut

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/nouns/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


=pod

=back

=cut

### END auto-generated




1;
