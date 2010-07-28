package WWW::TypePad::Applications;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

=pod

=head1 NAME

WWW::TypePad::Applications - Applications API methods

=head1 METHODS

=cut

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


=pod

=over 4


=item get

  my $res = $tp->applications->get($id);

Get basic information about the selected application.

Returns Application which contains following properties.

=over 8

=item name

(string) The name of the application as provided by its developer.

=item id

(string) A string containing the canonical identifier that can be used to identify this application in URLs.

=item objectTypes

(setE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> The object types for this object. This set will contain the string CE<lt>tag:api.typepad.com,2009:ApplicationE<gt> for an Application object.

=item objectType

(string) The keyword identifying the type of object this is. For an Application object, ME<lt>objectTypeE<gt> will be CE<lt>ApplicationE<gt>.

=item oauthRequestTokenUrl

(string) The URL of the OAuth request token endpoint for this application.

=item oauthAuthorizationUrl

(string) The URL to send the user's browser to for the user authorization step.

=item oauthAccessTokenUrl

(string) The URL of the OAuth access token endpoint for this application.

=item oauthIdentificationUrl

(string) The URL to send the user's browser to in order to identify who is logged in (that is, the "sign in" link).

=item sessionSyncScriptUrl

(string) The URL of the session sync script.

=item signoutUrl

(string) The URL to send the user's browser to in order to sign them out of TypePad.

=item userFlyoutsScriptUrl

(string) The URL of a script to embed to enable the user flyouts functionality.

=item id

(string) A URI that serves as a globally unique identifier for the object.

=item urlId

(string) A string containing the canonical identifier that can be used to identify this object in URLs. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.


=back

=cut

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


=pod



=item create_external_feed_subscription

  my $res = $tp->applications->create_external_feed_subscription($id);

Subscribe the application to one or more external feeds.

Returns hash reference which contains following properties.

=over 8

=item subscription

(ExternalFeedSubscription) The subscription object that was created.


=back

=cut

sub create_external_feed_subscription {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s/create-external-feed-subscription.json', @args;
    $api->base->call("POST", $uri, @_);
}


=pod



=item get_external_feed_subscriptions

  my $res = $tp->applications->get_external_feed_subscriptions($id);

Get a list of the application's active external feed subscriptions.

Returns ListE<lt>ExternalFeedSubscriptionE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>ExternalFeedSubscriptionE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_external_feed_subscriptions {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s/external-feed-subscriptions.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub external_feed_subscriptions {
    my $self = shift;
    Carp::carp("'external_feed_subscriptions' is deprecated. Use 'get_external_feed_subscriptions' instead.");
    $self->get_external_feed_subscriptions(@_);
}

=pod



=item get_groups

  my $res = $tp->applications->get_groups($id);

Get a list of groups in which a client using a CE<lt>app_fullE<gt> access auth token from this application can act.

Returns ListE<lt>GroupE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>GroupE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_groups {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s/groups.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub groups {
    my $self = shift;
    Carp::carp("'groups' is deprecated. Use 'get_groups' instead.");
    $self->get_groups(@_);
}

=pod
 
=back

=cut
 
### END auto-generated




1;
