package WWW::TypePad::Assets;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';


sub search {
    my $api = shift;
    my @args;
    my $uri = sprintf '/assets.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub remove {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s.json', @args;
    $api->base->call("DELETE", $uri, @_);
}

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub update {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s.json', @args;
    $api->base->call("PUT", $uri, @_);
}

sub add_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/add-category.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub categories {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/categories.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub comment_tree {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/comment-tree.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub new_to_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/comments.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/comments.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub extended_content {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/extended-content.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub favorites {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/favorites.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub feedback_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/feedback-status.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub update_feedback_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/feedback-status.json', @args;
    $api->base->call("PUT", $uri, @_);
}

sub make_comment_preview {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/make-comment-preview.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub media_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/media-assets.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub publication_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/publication-status.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub update_publication_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/publication-status.json', @args;
    $api->base->call("PUT", $uri, @_);
}

sub reblogs {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/reblogs.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub remove_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/remove-category.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub update_publication_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/update-publication-status.json', @args;
    $api->base->call("POST", $uri, @_);
}
### END auto-generated




1;
