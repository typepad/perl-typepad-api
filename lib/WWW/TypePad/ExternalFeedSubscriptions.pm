package WWW::TypePad::ExternalFeedSubscriptions;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/external-feed-subscriptions' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_get($id);
}

sub feeds {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'feeds', undef, undef, @_);
}


sub add_feeds {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'add-feeds', undef, undef, @_);
}

sub update_user {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'update-user', undef, undef, @_);
}

sub update_filters {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'update-filters', undef, undef, @_);
}

sub remove_feeds {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'remove-feeds', undef, undef, @_);
}

sub update_notification_settings {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'update-notification-settings', undef, undef, @_);
}

### END auto-generated

1;
