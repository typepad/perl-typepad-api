package WWW::TypePad::ExternalFeedSubscriptions;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


sub delete {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s.json', @args;
    $api->base->call("DELETE", $uri, @_);
}


sub remove {
    my $self = shift;
    Carp::carp("'remove' is deprecated. Use 'delete' instead.");
    $self->delete(@_);
}

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub add_feeds {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/add-feeds.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub get_feeds {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/feeds.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub feeds {
    my $self = shift;
    Carp::carp("'feeds' is deprecated. Use 'get_feeds' instead.");
    $self->get_feeds(@_);
}

sub remove_feeds {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/remove-feeds.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub update_filters {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/update-filters.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub update_notification_settings {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/update-notification-settings.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub update_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/update-user.json', @args;
    $api->base->call("POST", $uri, @_);
}

### END auto-generated

1;
