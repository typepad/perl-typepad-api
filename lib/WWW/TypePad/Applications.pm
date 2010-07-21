package WWW::TypePad::Applications;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';


sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub create_external_feed_subscription {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s/create-external-feed-subscription.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub external_feed_subscriptions {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s/external-feed-subscriptions.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub groups {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/applications/%s/groups.json', @args;
    $api->base->call("GET", $uri, @_);
}
### END auto-generated




1;
