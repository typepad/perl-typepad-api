package WWW::TypePad::Favorites;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/favorites' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_get($id);
}

sub remove {
    my $api = shift;
    my $id  = shift;
    $api->_delete($id, undef, undef, undef, @_);
}


### END auto-generated




1;
