#!/usr/bin/perl
use strict;
use Data::Dump 'pp';
use Template;
use JSON;
use LWP::Simple;
use FindBin qw($Bin);
use String::CamelCase qw(camelize decamelize);

my $host = shift || "api.typepad.com";

my $file = "method-mappings.json";
warn "Downloading $file\n";
LWP::Simple::mirror("http://$host/client-library-helpers/$file", "$Bin/$file");

my $json  = do { open my $fh, "<", "$Bin/$file" or die $!; join '', <$fh> };
my $mappings = decode_json($json);

my $method_name_map = {
    'post' => 'new',
    'put'  => 'update',
    'delete' => 'remove',
};

for my $key (keys %$mappings) {
    handle_object($key, $mappings->{$key})
}

sub handle_object {
    my($key, $mapping) = @_;

    my $name = camelize($key);
    my $file = "lib/WWW/TypePad/$name.pm";
    rewrite_file($mapping, $name, $file);
}

sub rewrite_file {
    my($mapping, $package, $file) = @_;

    my $content = slurp($file) || stub_for($package);
    $content =~ s/### BEGIN auto-generated.*### END auto-generated\n/generate_code($package, $mapping)/egs
        or return warn "$file: auto-generated code marked was not found.\n";

    warn "Writing $file\n";
    open my $fh, ">", $file or die "$file: $!";
    print $fh $content;
}

sub generate_code {
    my($package, $mapping) = @_;

    my $stash = {
        package => $package,
        mapping => $mapping,
        safe => sub { $_[0] =~ tr/-/_/; $_[0] },
        mangle_method => sub {
            my $method = $_[0];
            $method =~ s/^(post|put|delete)/$method_name_map->{$1}/;
            $method =~ s/^get([A-Z])/$1/;
            decamelize($method);
        },
        path_format => sub { join '/', map { defined $_ ? $_ : '%s' } @{$_[0]} },
        keys_sorted_by_value => sub { sort { $_[0]->{$a} <=> $_[0]->{$b} } keys %{$_[0]} },
    };

    my $tt = Template->new;
    $tt->process(\<<'TEMPLATE', $stash, \my $output) or die $tt->error;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

[% FOREACH method IN mapping.methods -%]

sub [% mangle_method( method.methodName ) %] {
    my $api = shift;
    my @args;
[% FOREACH param IN keys_sorted_by_value( method.pathParams ) -%]
    push @args, shift; # [% param %]
[% END -%]
    my $uri = sprintf '/[% path_format(method.pathChunks) %].json', @args;
    $api->base->call("[% method.httpMethod %]", $uri, @_);
}
[% END # FOREACH method -%]
### END auto-generated
TEMPLATE

    return $output;
}

sub slurp {
    my $file = shift;
    open my $fh, "<", $file or return;
    join '', <$fh>;
}

sub stub_for {
    my $package = shift;
    return "package WWW::TypePad::$package;\n### BEGIN auto-generated\n\n### END auto-generated\n\n1;\n";
}


