package WWW::TypePad::Favorites;
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
    my $uri = sprintf '/favorites/%s.json', @args;
    $api->base->call("DELETE", $uri, @_);
}

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/favorites/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}
### END auto-generated




1;
