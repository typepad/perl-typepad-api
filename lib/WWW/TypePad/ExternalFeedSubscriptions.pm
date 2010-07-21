package WWW::TypePad::ExternalFeedSubscriptions;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';


sub remove {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s.json', @args;
    $api->base->call("DELETE", $uri, @_);
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

sub feeds {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/external-feed-subscriptions/%s/feeds.json', @args;
    $api->base->call("GET", $uri, @_);
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
