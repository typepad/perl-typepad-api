package WWW::TypePad::Users;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub get_badges {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/badges.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub badges {
    my $self = shift;
    Carp::carp("'badges' is deprecated. Use 'get_badges' instead.");
    $self->get_badges(@_);
}

sub get_blogs {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/blogs.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub blogs {
    my $self = shift;
    Carp::carp("'blogs' is deprecated. Use 'get_blogs' instead.");
    $self->get_blogs(@_);
}

sub get_elsewhere_accounts {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/elsewhere-accounts.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub elsewhere_accounts {
    my $self = shift;
    Carp::carp("'elsewhere_accounts' is deprecated. Use 'get_elsewhere_accounts' instead.");
    $self->get_elsewhere_accounts(@_);
}

sub get_events {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/events.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub events {
    my $self = shift;
    Carp::carp("'events' is deprecated. Use 'get_events' instead.");
    $self->get_events(@_);
}

sub get_events_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/events/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub events_by_group {
    my $self = shift;
    Carp::carp("'events_by_group' is deprecated. Use 'get_events_by_group' instead.");
    $self->get_events_by_group(@_);
}

sub post_to_favorites {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/favorites.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub new_to_favorites {
    my $self = shift;
    Carp::carp("'new_to_favorites' is deprecated. Use 'post_to_favorites' instead.");
    $self->post_to_favorites(@_);
}

sub get_favorites {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/favorites.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub favorites {
    my $self = shift;
    Carp::carp("'favorites' is deprecated. Use 'get_favorites' instead.");
    $self->get_favorites(@_);
}

sub get_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/memberships.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub memberships {
    my $self = shift;
    Carp::carp("'memberships' is deprecated. Use 'get_memberships' instead.");
    $self->get_memberships(@_);
}

sub get_admin_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/memberships/@admin.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub admin_memberships {
    my $self = shift;
    Carp::carp("'admin_memberships' is deprecated. Use 'get_admin_memberships' instead.");
    $self->get_admin_memberships(@_);
}

sub get_memberships_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/memberships/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub memberships_by_group {
    my $self = shift;
    Carp::carp("'memberships_by_group' is deprecated. Use 'get_memberships_by_group' instead.");
    $self->get_memberships_by_group(@_);
}

sub get_member_memberships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/memberships/@member.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub member_memberships {
    my $self = shift;
    Carp::carp("'member_memberships' is deprecated. Use 'get_member_memberships' instead.");
    $self->get_member_memberships(@_);
}

sub get_notifications {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/notifications.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub notifications {
    my $self = shift;
    Carp::carp("'notifications' is deprecated. Use 'get_notifications' instead.");
    $self->get_notifications(@_);
}

sub get_notifications_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/notifications/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub notifications_by_group {
    my $self = shift;
    Carp::carp("'notifications_by_group' is deprecated. Use 'get_notifications_by_group' instead.");
    $self->get_notifications_by_group(@_);
}

sub get_profile {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/profile.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub profile {
    my $self = shift;
    Carp::carp("'profile' is deprecated. Use 'get_profile' instead.");
    $self->get_profile(@_);
}

sub get_relationships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/relationships.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub relationships {
    my $self = shift;
    Carp::carp("'relationships' is deprecated. Use 'get_relationships' instead.");
    $self->get_relationships(@_);
}

sub get_relationships_by_group {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # groupId
    my $uri = sprintf '/users/%s/relationships/@by-group/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub relationships_by_group {
    my $self = shift;
    Carp::carp("'relationships_by_group' is deprecated. Use 'get_relationships_by_group' instead.");
    $self->get_relationships_by_group(@_);
}

sub get_relationships_by_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # userId
    my $uri = sprintf '/users/%s/relationships/@by-user/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub relationships_by_user {
    my $self = shift;
    Carp::carp("'relationships_by_user' is deprecated. Use 'get_relationships_by_user' instead.");
    $self->get_relationships_by_user(@_);
}

sub get_follower_relationships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/relationships/@follower.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub follower_relationships {
    my $self = shift;
    Carp::carp("'follower_relationships' is deprecated. Use 'get_follower_relationships' instead.");
    $self->get_follower_relationships(@_);
}

sub get_following_relationships {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/users/%s/relationships/@following.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub following_relationships {
    my $self = shift;
    Carp::carp("'following_relationships' is deprecated. Use 'get_following_relationships' instead.");
    $self->get_following_relationships(@_);
}
### END auto-generated




# aliases

sub followers { shift->follower_relationships(@_) }
sub following { shift->following_relationships(@_) }

1;
