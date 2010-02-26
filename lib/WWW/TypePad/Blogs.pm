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
    $api->_get($id);
}

sub post_by_email_settings {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-by-email-settings', undef, undef, @_);
}

sub post_by_email_settings_by_user {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-by-email-settings', 'by_user', @_);
}

sub stats {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'stats', undef, undef, );
}

sub categories {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'categories', undef, undef, @_);
}

sub comments {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'comments', undef, undef, );
}

sub published_comments {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'comments', 'published', undef, );
}

sub crosspost_accounts {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'crosspost-accounts', undef, undef, @_);
}

sub commenting_settings {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'commenting-settings', undef, undef, @_);
}

sub page_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'page-assets', undef, undef, @_);
}

sub new_page_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'page-assets', undef, undef, @_);
}

sub post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', undef, undef, @_);
}

sub published_post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', 'published', undef, @_);
}

sub post_assets_by_category {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', 'by_category', @_);
}

sub post_assets_by_month {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', 'by_month', @_);
}

sub recent_post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', 'recent', undef, @_);
}

sub new_post_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'post-assets', undef, undef, @_);
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

sub discover_external_post_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'discover-external-post-asset', undef, undef, @_);
}

### END auto-generated




1;
