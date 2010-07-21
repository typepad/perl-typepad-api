package WWW::TypePad::Groups;
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
    my $uri = sprintf '/groups/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub add_member {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/add-member.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub new_to_audio_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/audio-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub block_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/block-user.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub create_external_feed_subscription {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/create-external-feed-subscription.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub events {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/events.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub external_feed_subscriptions {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/external-feed-subscriptions.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub new_to_link_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/link-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/memberships.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub admin_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/memberships/@admin.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub blocked_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/memberships/@blocked.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub member_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/memberships/@member.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub new_to_photo_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/photo-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub new_to_post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/post-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub remove_member {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/remove-member.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub unblock_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/unblock-user.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub new_to_video_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/groups/%s/video-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}
### END auto-generated


sub upload_photo {
    my $api = shift;
    my( $id, $asset, $filename ) = @_;
    return $api->base->call_upload( {
        # No extension on this!
        target_url  => '/groups/' . $id . '/photo-assets',
        asset       => $asset,
        filename    => $filename,
    } );
}

sub upload_audio {
    my $api = shift;
    my( $id, $asset, $filename ) = @_;
    return $api->base->call_upload( {
        # No extension on this!
        target_url  => '/groups/' . $id . '/audio-assets',
        asset       => $asset,
        filename    => $filename,
    } );
}


1;
