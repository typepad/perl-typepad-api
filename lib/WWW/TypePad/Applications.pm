package WWW::TypePad::Applications;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

sub prefix { '/applications' }

sub get {
    my $api = shift;
    my $id  = shift;
    $api->_get($id);
}

sub external_feed_subscriptions {
    my $api = shift;
    my $id  = shift;
    $api->_get($id, 'external-feed-subscriptions', undef, undef, @_);
}


sub create_external_feed_subscription {
    my $api = shift;
    my $id  = shift;
    $api->_post($id, 'create-external-feed-subscription', undef, undef, @_);
}

### END auto-generated




1;
