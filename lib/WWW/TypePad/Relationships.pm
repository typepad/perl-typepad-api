package WWW::TypePad::Relationships;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/relationships/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub get_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/relationships/%s/status.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub status {
    my $self = shift;
    Carp::carp("'status' is deprecated. Use 'get_status' instead.");
    $self->get_status(@_);
}

sub put_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/relationships/%s/status.json', @args;
    $api->base->call("PUT", $uri, @_);
}


sub update_status {
    my $self = shift;
    Carp::carp("'update_status' is deprecated. Use 'put_status' instead.");
    $self->put_status(@_);
}
### END auto-generated




1;
