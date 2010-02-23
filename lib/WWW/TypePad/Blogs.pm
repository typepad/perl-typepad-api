package WWW::TypePad::Blogs;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/blogs' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_call($id);
}

sub post_by_email_settings {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-by-email-settings', undef, undef, @_);
}

sub post_by_email_settings_by_user {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-by-email-settings', 'by_user', @_);
}

sub stats {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'stats', undef, undef, );
}

sub categories {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'categories', undef, undef, @_);
}

sub comments {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'comments', undef, undef, );
}

sub published_comments {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'comments', 'published', undef, );
}

sub crosspost_accounts {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'crosspost-accounts', undef, undef, @_);
}

sub commenting_settings {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'commenting-settings', undef, undef, @_);
}

sub page_assets {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'page-assets', undef, undef, @_);
}

sub post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-assets', undef, undef, @_);
}

sub published_post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-assets', 'published', undef, @_);
}

sub post_assets_by_category {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-assets', 'by_category', @_);
}

sub post_assets_by_month {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-assets', 'by_month', @_);
}

sub recent_post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_call($id, 'post-assets', 'recent', undef, @_);
}


### END auto-generated




1;
