package WWW::TypePad;
use strict;
use 5.008_001;

our $VERSION = '0.009_01';

use Any::Moose;
use JSON;
use LWP::UserAgent;
use Net::OAuth::Simple;
use WWW::TypePad::Util;
use WWW::TypePad::Error;

# TODO import flag to preload them all
use WWW::TypePad::ApiKeys;
use WWW::TypePad::Applications;
use WWW::TypePad::Assets;
use WWW::TypePad::AuthTokens;
use WWW::TypePad::BatchProcessor;
use WWW::TypePad::Blogs;
use WWW::TypePad::BrowserUpload;
use WWW::TypePad::Events;
use WWW::TypePad::Favorites;
use WWW::TypePad::Groups;
use WWW::TypePad::Nouns;
use WWW::TypePad::ObjectTypes;
use WWW::TypePad::Relationships;
use WWW::TypePad::Users;

has 'consumer_key' => ( is => 'rw' );
has 'consumer_secret' => ( is => 'rw' );
has 'access_token' => ( is => 'rw' );
has 'access_token_secret' => ( is => 'rw' );
has 'host' => ( is => 'rw', default => 'api.typepad.com' );
has '_oauth' => ( is => 'rw' );

for my $object_type (qw( apikeys applications assets auth_tokens batch_processor blogs browser_upload
                         events favorites groups nouns objecttypes relationships users )) {
    my $backend_class = ucfirst $object_type;
    $backend_class =~ s/_(\w)/uc $1/eg;
    $backend_class = "WWW::TypePad::$backend_class";
    has $object_type => (
        is => 'rw', lazy => 1,
        default => sub { $backend_class->new({ base => $_[0] }) },
    );
}

sub oauth {
    my $api = shift;
    unless ( defined $api->_oauth ) {
        my $apikey = $api->get_apikey( $api->consumer_key );
        my $links = $apikey->{owner}{links};

        $api->_oauth( Net::OAuth::Simple::AuthHeader->new(
            tokens => {
                consumer_key          => $api->consumer_key,
                consumer_secret       => $api->consumer_secret,
                access_token          => $api->access_token,
                access_token_secret   => $api->access_token_secret,
            },
            urls => {
                authorization_url   => WWW::TypePad::Util::l( $links, 'oauth-authorization-page' ),
                request_token_url   => WWW::TypePad::Util::l( $links, 'oauth-request-token-endpoint' ),
                access_token_url    => WWW::TypePad::Util::l( $links, 'oauth-access-token-endpoint' ),
            },
        ) );
    }
    return $api->_oauth;
}

sub get_apikey {
    my $api = shift;
    my( $key ) = @_;
    return $api->call_anon( GET => '/api-keys/' . $key . '.json' );
}

sub uri_for {
    my $api = shift;
    my( $path ) = @_;
    return 'http://' . $api->host . $path;
}

sub call {
    my $api = shift;
    return $api->_call(0, @_);
}

sub call_anon {
    my $api = shift;
    return $api->_call(1, @_);
}

sub _call {
    my $api = shift;
    my( $anon, $method, $uri, $qs ) = @_;
    unless ( $uri =~ /^http/ ) {
        $uri = $api->uri_for( $uri );
    }
    if ( $method eq 'GET'&& $qs ) {
        $uri = URI->new( $uri );
        $uri->query_form( $qs );
    }
    my $res;
    if ( $api->access_token && !$anon ) {
        $uri =~ s/^http:/https:/;

        my %extra;
        if (($method eq 'POST' or $method eq 'PUT') and $qs) {
            $extra{ContentBody} = JSON::encode_json($qs);
            $extra{ContentType} = 'application/json';
        }

        $res = $api->oauth->make_restricted_request( $uri, $method, %extra );
    } else {
        my $ua = LWP::UserAgent->new;
        my $req = HTTP::Request->new( $method => $uri );
        $res = $ua->request( $req );
    }

    unless ( $res->is_success ) {
        WWW::TypePad::Error::HTTP->throw( $res->code, $res->message );
    }

    return 1 if $res->code == 204;
    return JSON::decode_json( $res->content );
}

package Net::OAuth::Simple::AuthHeader;
# we need Net::OAuth::Simple to make requests with the OAuth credentials
# in an Authorization header, as required by the API, rather than the query string

use base qw( Net::OAuth::Simple );

sub new {
    my $class = shift;
    my $self = $class->SUPER::new( @_ );
    $self->{browser}->max_redirect( 0 );
    return $self;
}

sub make_restricted_request {
    my $self = shift;
    croak $Net::OAuth::Simple::UNAUTHORIZED unless $self->authorized;

    my( $url, $method, %extras ) = @_;

    my $uri = URI->new( $url );
    my %query = $uri->query_form;
    $uri->query_form( {} );

    $method = lc $method;

    my $content_body = delete $extras{ContentBody};
    my $content_type = delete $extras{ContentType};

    my $request = Net::OAuth::ProtectedResourceRequest->new(
        consumer_key     => $self->consumer_key,
        consumer_secret  => $self->consumer_secret,
        request_url      => $uri,
        request_method   => uc( $method ),
        signature_method => $self->signature_method,
        protocol_version => $self->oauth_1_0a ?
            Net::OAuth::PROTOCOL_VERSION_1_0A :
            Net::OAuth::PROTOCOL_VERSION_1_0,
        timestamp        => time,
        nonce            => $self->_nonce,
        extra_params     => \%query,
        token            => $self->access_token,
        token_secret     => $self->access_token_secret,
        extra_params     => \%extras,
    );
    $request->sign;
    die "COULDN'T VERIFY! Check OAuth parameters.\n"
        unless $request->verify;

    my $request_url = URI->new( $url );
    my $response = $self->{browser}->$method(
        $request_url, 'Authorization' => $request->to_authorization_header,
        ( $content_body ? (
            'Content-Type'   => $content_type,
            'Content-Length' => length $content_body,
            'Content'        => $content_body,
        ) : () ),
    );

    if ( $response->is_redirect ) {
        my $referral_uri = $response->header( 'Location' );
        return $self->make_restricted_request(
            $referral_uri,
            $method,
            %extras,
        );
    }

    die "$method on $request_url failed: " . $response->status_line
        unless $response->is_success;

    return $response;
}

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

WWW::TypePad - Client for the TypePad Platform

=head1 SYNOPSIS

    use WWW::TypePad;
    my $tp = WWW::TypePad->new;

=head1 DESCRIPTION

WWW::TypePad is a Perl library implementing an interface to the TypePad
API platform.

=head1 WARNINGS

B<The object interface and implementations are considered ALPHA and
will be likely to change in the future versions>.

=head1 AUTHOR

Benjamin Trott and Tatsuhiko Miyagawa E<lt>cpan@sixapart.comE<gt>

=head1 COPYRIGHT

Copyright 2010- Six Apart, Ltd.

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 COMMUNITY

L<http://github.com/sixapart/perl-typepad-api>

=head1 SEE ALSO

L<http://developers.typepad.com/>

=cut
