package WWW::TypePad::ClientLibraryHelpers;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/client-library-helpers' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_get($id);
}


### END auto-generated

1;
