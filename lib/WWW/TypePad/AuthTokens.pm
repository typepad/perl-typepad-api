package WWW::TypePad::AuthTokens;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/auth-tokens' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_call($id);
}


### END auto-generated




1;
