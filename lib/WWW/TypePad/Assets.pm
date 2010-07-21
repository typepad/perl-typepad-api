package WWW::TypePad::Assets;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


sub search {
    my $api = shift;
    my @args;
    my $uri = sprintf '/assets.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub delete {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s.json', @args;
    $api->base->call("DELETE", $uri, @_);
}


sub remove {
    my $self = shift;
    Carp::carp("'remove' is deprecated. Use 'delete' instead.");
    $self->delete(@_);
}

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub put {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s.json', @args;
    $api->base->call("PUT", $uri, @_);
}


sub update {
    my $self = shift;
    Carp::carp("'update' is deprecated. Use 'put' instead.");
    $self->put(@_);
}

sub add_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/add-category.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub get_categories {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/categories.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub categories {
    my $self = shift;
    Carp::carp("'categories' is deprecated. Use 'get_categories' instead.");
    $self->get_categories(@_);
}

sub get_comment_tree {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/comment-tree.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub comment_tree {
    my $self = shift;
    Carp::carp("'comment_tree' is deprecated. Use 'get_comment_tree' instead.");
    $self->get_comment_tree(@_);
}

sub post_to_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/comments.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub new_to_comments {
    my $self = shift;
    Carp::carp("'new_to_comments' is deprecated. Use 'post_to_comments' instead.");
    $self->post_to_comments(@_);
}

sub get_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/comments.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub comments {
    my $self = shift;
    Carp::carp("'comments' is deprecated. Use 'get_comments' instead.");
    $self->get_comments(@_);
}

sub get_extended_content {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/extended-content.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub extended_content {
    my $self = shift;
    Carp::carp("'extended_content' is deprecated. Use 'get_extended_content' instead.");
    $self->get_extended_content(@_);
}

sub get_favorites {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/favorites.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub favorites {
    my $self = shift;
    Carp::carp("'favorites' is deprecated. Use 'get_favorites' instead.");
    $self->get_favorites(@_);
}

sub get_feedback_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/feedback-status.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub feedback_status {
    my $self = shift;
    Carp::carp("'feedback_status' is deprecated. Use 'get_feedback_status' instead.");
    $self->get_feedback_status(@_);
}

sub put_feedback_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/feedback-status.json', @args;
    $api->base->call("PUT", $uri, @_);
}


sub update_feedback_status {
    my $self = shift;
    Carp::carp("'update_feedback_status' is deprecated. Use 'put_feedback_status' instead.");
    $self->put_feedback_status(@_);
}

sub make_comment_preview {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/make-comment-preview.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub get_media_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/media-assets.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub media_assets {
    my $self = shift;
    Carp::carp("'media_assets' is deprecated. Use 'get_media_assets' instead.");
    $self->get_media_assets(@_);
}

sub get_publication_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/publication-status.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub publication_status {
    my $self = shift;
    Carp::carp("'publication_status' is deprecated. Use 'get_publication_status' instead.");
    $self->get_publication_status(@_);
}

sub put_publication_status {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/publication-status.json', @args;
    $api->base->call("PUT", $uri, @_);
}


sub update_publication_status {
    my $self = shift;
    Carp::carp("'update_publication_status' is deprecated. Use 'put_publication_status' instead.");
    $self->put_publication_status(@_);
}

sub get_reblogs {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/assets/%s/reblogs.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub reblogs {
    my $self = shift;
    Carp::carp("'reblogs' is deprecated. Use 'get_reblogs' instead.");
    $self->get_reblogs(@_);
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
