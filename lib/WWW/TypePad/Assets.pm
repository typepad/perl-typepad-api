package WWW::TypePad::Assets;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/assets' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_call($id);
}

sub favorites {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'favorites', undef, undef, @_);
}

sub feedback_status {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'feedback-status', undef, undef, @_);
}

sub publication_status {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'publication-status', undef, undef, @_);
}

sub categories {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'categories', undef, undef, @_);
}

sub comments {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'comments', undef, undef, @_);
}

sub media_assets {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'media-assets', undef, undef, @_);
}

sub comment_tree {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'comment-tree', undef, undef, @_);
}


### END auto-generated




1;
