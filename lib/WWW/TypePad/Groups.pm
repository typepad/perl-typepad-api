package WWW::TypePad::Groups;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/groups' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_get($id);
}

sub memberships {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'memberships', undef, undef, @_);
}

sub admin_memberships {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'memberships', 'admin', undef, @_);
}

sub member_memberships {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'memberships', 'member', undef, @_);
}

sub blocked_memberships {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'memberships', 'blocked', undef, @_);
}

sub video_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'video-assets', undef, undef, @_);
}

sub new_video_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'video-assets', undef, undef, @_);
}

sub audio_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'audio-assets', undef, undef, @_);
}

sub new_audio_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'audio-assets', undef, undef, @_);
}

sub external_feed_subscriptions {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'external-feed-subscriptions', undef, undef, @_);
}

sub photo_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'photo-assets', undef, undef, @_);
}

sub new_photo_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'photo-assets', undef, undef, @_);
}

sub events {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'events', undef, undef, @_);
}

sub link_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'link-assets', undef, undef, @_);
}

sub new_link_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'link-assets', undef, undef, @_);
}

sub post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', undef, undef, @_);
}

sub new_post_asset {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'post-assets', undef, undef, @_);
}


sub create_external_feed_subscription {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'create-external-feed-subscription', undef, undef, @_);
}

### END auto-generated


sub upload_photo {
    my $api = shift;
    my( $id, $asset, $filename ) = @_;
    return $api->base->call_upload( {
        # No extension on this!
        target_url  => $api->prefix . '/' . $id . '/photo-assets',
        asset       => $asset,
        filename    => $filename,
    } );
}

sub upload_audio {
    my $api = shift;
    my( $id, $asset, $filename ) = @_;
    return $api->base->call_upload( {
        # No extension on this!
        target_url  => $api->prefix . '/' . $id . '/audio-assets',
        asset       => $asset,
        filename    => $filename,
    } );
}


1;
