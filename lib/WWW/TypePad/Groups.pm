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

sub events {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'events', undef, undef, @_);
}

sub photo_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'photo-assets', undef, undef, @_);
}

sub video_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'video-assets', undef, undef, @_);
}

sub post_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'post-assets', undef, undef, @_);
}

sub link_assets {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'link-assets', undef, undef, @_);
}


### END auto-generated




1;
