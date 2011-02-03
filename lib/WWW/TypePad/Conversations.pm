package WWW::TypePad::Conversations;

use strict;
use warnings;

# Install an accessor into WWW::TypePad to access an instance of this class
# bound to the WWW::TypePad instance.
sub WWW::TypePad::conversations { __PACKAGE__->new( base => $_[0] ) }

### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

=pod

=head1 NAME

WWW::TypePad::Conversations - Conversations API methods

=head1 METHODS

=cut

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


=pod

=over 4


=item add_external_response

  my $res = $tp->conversations->add_external_response($id);

Record a response to a conversation originating from somewhere other than a TypePad blog.

Returns hash reference which contains following properties.

=over 8

=item response

(ConversationResponse) A ConversationResponse object representing the created response.


=back

=cut

sub add_external_response {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/conversations/%s/add-external-response.json', @args;
    $api->base->call("POST", $uri, @_);
}


=pod



=item add_poll_response

  my $res = $tp->conversations->add_poll_response($id);

Record a response choosing one of the polling options for this conversation.

Returns hash reference which contains following properties.

=over 8

=item responseToken

(string) A secret token associated with the responseId.

=item responseId

(string) An identifier for the poll response.


=back

=cut

sub add_poll_response {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/conversations/%s/add-poll-response.json', @args;
    $api->base->call("POST", $uri, @_);
}


=pod



=item get_responses

  my $res = $tp->conversations->get_responses($id);

Retrieve a list of responses for the selected conversation.

Returns StreamE<lt>ConversationResponseE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole stream of which this response contains a subset. CE<lt>nullE<gt> if an exact count cannot be determined.

=item estimatedTotalResults

(integer) An estimate of the total number of items in the whole list of which this response contains a subset. CE<lt>nullE<gt> if a count cannot be determined at all, or if an exact count is returned in CE<lt>totalResultsE<gt>.

=item moreResultsToken

(string) An opaque token that can be used as the CE<lt>start-tokenE<gt> parameter of a followup request to retrieve additional results. CE<lt>nullE<gt> if there are no more results to retrieve, but the presence of this token does not guarantee that the response to a followup request will actually contain results.

=item entries

(arrayE<lt>ConversationResponseE<gt>) A selection of items from the underlying stream.


=back

=cut

sub get_responses {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/conversations/%s/responses.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub responses {
    my $self = shift;
    Carp::carp("'responses' is deprecated. Use 'get_responses' instead.");
    $self->get_responses(@_);
}

=pod



=item get_featured_responses

  my $res = $tp->conversations->get_featured_responses($id);

Retrieve a list of featured responses for the selected conversation.

Returns ListE<lt>ConversationResponseE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>ConversationResponseE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_featured_responses {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/conversations/%s/responses/@featured.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub featured_responses {
    my $self = shift;
    Carp::carp("'featured_responses' is deprecated. Use 'get_featured_responses' instead.");
    $self->get_featured_responses(@_);
}

=pod



=item get_widget_data

  my $res = $tp->conversations->get_widget_data($id);

BE<lt>UnimplementedE<gt> Retrieve the data needed to render the conversations widget without site affinity.

Returns hash reference which contains following properties.

=over 8

=item featuredResponse

(ConversationResponse) A response from the selected conversation to show in a prominent position in the widget. This response should always be high-quality. Omitted if the conversation does not yet have any responses.

=item contentPlain

(string) A plain text (no HTML) version of the selected conversation's body text.

=item reactionCount

(integer) The number of times the asset that started the selected conversation has been reacted to.

=item pollOptions

(arrayE<lt>ConversationPollOptionE<gt>) The poll options for the selected conversation.

=item author

(User) The user that provided the content for the selected conversation.

=item title

(string) The title of the selected conversation. This is the question that was asked.


=back

=cut

sub get_widget_data {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/conversations/%s/widget-data.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub widget_data {
    my $self = shift;
    Carp::carp("'widget_data' is deprecated. Use 'get_widget_data' instead.");
    $self->get_widget_data(@_);
}

=pod



=item get_widget_data_by_site

  my $res = $tp->conversations->get_widget_data_by_site($id, $siteId);

BE<lt>UnimplementedE<gt> Retrieve the data needed to render the conversations widget with affinity to the selected site.

Returns hash reference which contains following properties.

=over 8

=item featuredResponse

(ConversationResponse) A response from the selected conversation to show in a prominent position in the widget. This response should always be high-quality. Omitted if the conversation does not yet have any responses.

=item contentPlain

(string) A plain text (no HTML) version of the selected conversation's body text.

=item reactionCount

(integer) The number of times the asset that started the selected conversation has been reacted to.

=item pollOptions

(arrayE<lt>ConversationPollOptionE<gt>) The poll options for the selected conversation.

=item author

(User) The user that provided the content for the selected conversation.

=item title

(string) The title of the selected conversation. This is the question that was asked.


=back

=cut

sub get_widget_data_by_site {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # siteId
    my $uri = sprintf '/conversations/%s/widget-data/@by-site/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub widget_data_by_site {
    my $self = shift;
    Carp::carp("'widget_data_by_site' is deprecated. Use 'get_widget_data_by_site' instead.");
    $self->get_widget_data_by_site(@_);
}

=pod

=back

=cut

### END auto-generated

1;
