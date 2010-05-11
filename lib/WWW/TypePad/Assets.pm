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
    $api->_get($id);
}

sub favorites {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'favorites', undef, undef, @_);
}

sub feedback_status {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'feedback-status', undef, undef, @_);
}

sub set_feedback_status {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'feedback-status', undef, undef, @_);
}

sub publication_status {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'publication-status', undef, undef, @_);
}

sub set_publication_status {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'publication-status', undef, undef, @_);
}

sub reblogs {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'reblogs', undef, undef, @_);
}

sub categories {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'categories', undef, undef, @_);
}

sub comments {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'comments', undef, undef, @_);
}

sub new_comment {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'comments', undef, undef, @_);
}

sub media_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'media-assets', undef, undef, @_);
}

sub comment_tree {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'comment-tree', undef, undef, @_);
}


sub remove_category {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'remove-category', undef, undef, @_);
}

sub add_category {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'add-category', undef, undef, @_);
}

sub make_comment_preview {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'make-comment-preview', undef, undef, @_);
}

### END auto-generated




1;
