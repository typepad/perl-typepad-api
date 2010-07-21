package WWW::TypePad::Users;
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
    my $uri = sprintf '/users/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub badges {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/badges.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub blogs {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/blogs.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub elsewhere_accounts {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/elsewhere-accounts.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub events {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/events.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub events_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/events/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub new_to_favorites {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/favorites.json', @args;
    $api->base->call("POST", $uri, @_);
}

sub favorites {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/favorites.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/memberships.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub admin_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/memberships/@admin.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub memberships_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/memberships/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub member_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/memberships/@member.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub notifications {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/notifications.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub notifications_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/notifications/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub profile {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/profile.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub relationships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/relationships.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub relationships_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/relationships/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub relationships_by_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # userId
    my $uri = sprintf '/users/%s/relationships/@by-user/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub follower_relationships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/relationships/@follower.json', @args;
    $api->base->call("GET", $uri, @_);
}

sub following_relationships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/relationships/@following.json', @args;
    $api->base->call("GET", $uri, @_);
}
### END auto-generated




# aliases

sub followers { shift->follower_relationships(@_) }
sub following { shift->following_relationships(@_) }

1;
