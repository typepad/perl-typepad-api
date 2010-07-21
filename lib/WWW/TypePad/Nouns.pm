package WWW::TypePad::Nouns;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';


sub all {
    my $api = shift;
    my @args;
    my $uri = sprintf '/nouns.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/nouns/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}
### END auto-generated




1;
