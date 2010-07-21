package WWW::TypePad::Blogs;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';


sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub add_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/add-category.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub categories {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/categories.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub commenting_settings {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/commenting-settings.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub published_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/comments/@published.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub published_recent_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/comments/@published/@recent.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub crosspost_accounts {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/crosspost-accounts.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub discover_external_post_asset {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/discover-external-post-asset.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub new_to_media_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/media-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub new_to_page_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/page-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub page_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/page-assets.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub new_to_post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/post-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/post-assets.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub post_assets_by_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # category
    my $uri = sprintf '/blogs/%s/post-assets/@by-category/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub post_assets_by_month {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # month
    my $uri = sprintf '/blogs/%s/post-assets/@by-month/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub recent_post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/post-assets/@recent.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub post_by_email_settings_by_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # userId
    my $uri = sprintf '/blogs/%s/post-by-email-settings/@by-user/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub remove_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/remove-category.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub stats {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/stats.json', @args;
    $api->base->call("GET", $uri, @_);
}
### END auto-generated

sub upload_media_asset {
    my $api = shift;
    my( $id, $asset, $filename ) = @_;

    return $api->base->call_upload( {
        # No extension on this!
        target_url  => '/blogs/' . $id . '/media-assets',
        asset       => $asset,
        filename    => $filename,
    } );
}

1;
