package WWW::TypePad::Relationships;
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
    my $uri = sprintf '/relationships/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/relationships/%s/status.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub update_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/relationships/%s/status.json', @args;
    $api->base->call("PUT", $uri, @_);
}
### END auto-generated




1;
