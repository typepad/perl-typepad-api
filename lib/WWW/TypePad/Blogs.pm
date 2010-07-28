package WWW::TypePad::Blogs;
### BEGIN auto-generated
### This is an automatically generated code, do not edit!
### Scroll down to look for END to add additional methods

=pod

=head1 NAME

WWW::TypePad::Blogs - Blogs API methods

=head1 METHODS

=cut

use strict;
use Any::Moose;
extends 'WWW::TypePad::Noun';

use Carp ();


=pod

=over 4


=item get

  my $res = $tp->blogs->get($id);

Get basic information about the selected blog.

Returns Blog which contains following properties.

=over 8

=item id

(string) A URI that serves as a globally unique identifier for the object.

=item urlId

(string) A string containing the canonical identifier that can be used to identify this object in URLs. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

=item title

(string) The title of the blog.

=item homeUrl

(string) The URL of the blog's home page.

=item owner

(User) The user who owns the blog.

=item description

(string) The description of the blog as provided by its owner.

=item objectTypes

(setE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of object type identifier URIs. This set will contain the string CE<lt>tag:api.typepad.com,2009:BlogE<gt> for a Blog object.

=item objectType

(string) The keyword identifying the type of object this is. For a Blog object, ME<lt>objectTypeE<gt> will be CE<lt>BlogE<gt>.


=back

=cut

sub get {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


=pod



=item add_category

  my $res = $tp->blogs->add_category($id);

Send label argument to remove a category from the blog

Returns hash reference which contains following properties.

=over 8


=back

=cut

sub add_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/add-category.json', @args;
    $api->base->call("POST", $uri, @_);
}


=pod



=item get_categories

  my $res = $tp->blogs->get_categories($id);

Get a list of categories which are defined for the selected blog.

Returns ListE<lt>stringE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>stringE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_categories {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/categories.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub categories {
    my $self = shift;
    Carp::carp("'categories' is deprecated. Use 'get_categories' instead.");
    $self->get_categories(@_);
}

=pod



=item get_commenting_settings

  my $res = $tp->blogs->get_commenting_settings($id);

Get the commenting-related settings for this blog.

Returns BlogCommentingSettings which contains following properties.

=over 8

=item signinAllowed

(boolean) CE<lt>trueE<gt> if this blog allows users to sign in to comment, or CE<lt>falseE<gt> if all new comments are anonymous.

=item signinRequired

(boolean) CE<lt>trueE<gt> if this blog requires users to be logged in in order to leave a comment, or CE<lt>falseE<gt> if anonymous comments will be rejected.

=item emailAddressRequired

(boolean) CE<lt>trueE<gt> if this blog requires anonymous comments to be submitted with an email address, or CE<lt>falseE<gt> otherwise.

=item captchaRequired

(boolean) CE<lt>trueE<gt> if this blog requires anonymous commenters to pass a CAPTCHA before submitting a comment, or CE<lt>falseE<gt> otherwise.

=item moderationEnabled

(boolean) CE<lt>trueE<gt> if this blog places new comments into a moderation queue for approval before they are displayed, or CE<lt>falseE<gt> if new comments may be available immediately.

=item timeLimit

(integer) Number of days after a post is published that comments will be allowed. If the blog has no time limit for comments, this property will be omitted.

=item htmlAllowed

(boolean) CE<lt>trueE<gt> if this blog allows commenters to use basic HTML formatting in comments, or CE<lt>falseE<gt> if HTML will be removed.

=item urlsAutoLinked

(boolean) CE<lt>trueE<gt> if comments in this blog will automatically have any bare URLs turned into links, or CE<lt>falseE<gt> if URLs will be shown unlinked.


=back

=cut

sub get_commenting_settings {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/commenting-settings.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub commenting_settings {
    my $self = shift;
    Carp::carp("'commenting_settings' is deprecated. Use 'get_commenting_settings' instead.");
    $self->get_commenting_settings(@_);
}

=pod



=item get_published_comments

  my $res = $tp->blogs->get_published_comments($id);

Return a pageable list of published comments associated with the selected blog

Returns ListE<lt>CommentE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>CommentE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_published_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/comments/@published.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub published_comments {
    my $self = shift;
    Carp::carp("'published_comments' is deprecated. Use 'get_published_comments' instead.");
    $self->get_published_comments(@_);
}

=pod



=item get_published_recent_comments

  my $res = $tp->blogs->get_published_recent_comments($id);

Return the fifty most recent published comments associated with the selected blog

Returns ListE<lt>CommentE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>CommentE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_published_recent_comments {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/comments/@published/@recent.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub published_recent_comments {
    my $self = shift;
    Carp::carp("'published_recent_comments' is deprecated. Use 'get_published_recent_comments' instead.");
    $self->get_published_recent_comments(@_);
}

=pod



=item get_crosspost_accounts

  my $res = $tp->blogs->get_crosspost_accounts($id);

Get  a list of accounts that can be used for crossposting with this blog.

Returns ListE<lt>AccountE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>AccountE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_crosspost_accounts {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/crosspost-accounts.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub crosspost_accounts {
    my $self = shift;
    Carp::carp("'crosspost_accounts' is deprecated. Use 'get_crosspost_accounts' instead.");
    $self->get_crosspost_accounts(@_);
}

=pod



=item discover_external_post_asset

  my $res = $tp->blogs->discover_external_post_asset($id);

If the selected blog is a connected blog, create or retrieve the external post stub for the given permalink.

Returns hash reference which contains following properties.

=over 8

=item asset

(Asset) The asset that acts as a stub for the given permalink.


=back

=cut

sub discover_external_post_asset {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/discover-external-post-asset.json', @args;
    $api->base->call("POST", $uri, @_);
}


=pod



=item post_to_media_assets

  my $res = $tp->blogs->post_to_media_assets($id);

Add a new media asset to the account that owns this blog.

Returns Asset which contains following properties.

=over 8

=item id

(string) A URI that serves as a globally unique identifier for the user.

=item urlId

(string) A string containing the canonical identifier that can be used to identify this object in URLs. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

=item permalinkUrl

(string) The URL that is this asset's permalink. This will be omitted if the asset does not have a permalink of its own (for example, if it's embedded in another asset) or if TypePad does not know its permalink.

=item author

(User) The user who created the selected asset.

=item published

(string) The time at which the asset was created, as a W3CDTF timestamp.

=item content

(string) The raw asset content. The ME<lt>textFormatE<gt> property describes how to format this data. Use this property to set the asset content in write operations. An asset posted in a group may have a ME<lt>contentE<gt> value up to 10,000 bytes long, while a OE<lt>PostE<gt> asset in a blog may have up to 65,000 bytes of content.

=item renderedContent

(string) The content of this asset rendered to HTML. This is currently available only for OE<lt>PostE<gt> and OE<lt>PageE<gt> assets.

=item excerpt

(string) A short, plain-text excerpt of the entry content. This is currently available only for OE<lt>PostE<gt> assets.

=item textFormat

(string) A keyword that indicates what formatting mode to use for the content of this asset. This can be CE<lt>htmlE<gt> for assets the content of which is HTML, CE<lt>html_convert_linebreaksE<gt> for assets the content of which is HTML but where paragraph tags should be added automatically, or CE<lt>markdownE<gt> for assets the content of which is Markdown source. Other formatting modes may be added in future. Applications that present assets for editing should use this property to present an appropriate editor.

=item groups

(arrayE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of strings containing the ME<lt>idE<gt> URI of the OE<lt>GroupE<gt> object that this asset is mapped into, if any. This property has been superseded by the ME<lt>containerE<gt> property.

=item source

(AssetSource) An object describing the site from which this asset was retrieved, if the asset was obtained from an external source.

=item objectTypes

(setE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of object type identifier URIs identifying the type of this asset. Only the one object type URI for the particular type of asset this asset is will be present.

=item objectType

(string) The keyword identifying the type of asset this is.

=item isFavoriteForCurrentUser

(boolean) CE<lt>trueE<gt> if this asset is a favorite for the currently authenticated user, or CE<lt>falseE<gt> otherwise. This property is omitted from responses to anonymous requests.

=item favoriteCount

(integer) The number of distinct users who have added this asset as a favorite.

=item commentCount

(integer) The number of comments that have been posted in reply to this asset. This number includes comments that have been posted in response to other comments.

=item title

(string) The title of the asset.

=item description

(string) The description of the asset.

=item container

(ContainerRef) An object describing the group or blog to which this asset belongs.

=item publicationStatus

(PublicationStatus) BE<lt>EditableE<gt> An object describing the visibility status and publication date for this asset. Only visibility status is editable.

=item crosspostAccounts

(setE<lt>stringE<gt>) BE<lt>EditableE<gt> A set of identifiers for OE<lt>AccountE<gt> objects to which to crosspost this asset when it's posted. This property is omitted when retrieving existing assets.


=back

=cut

sub post_to_media_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/media-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub new_to_media_assets {
    my $self = shift;
    Carp::carp("'new_to_media_assets' is deprecated. Use 'post_to_media_assets' instead.");
    $self->post_to_media_assets(@_);
}

=pod



=item post_to_page_assets

  my $res = $tp->blogs->post_to_page_assets($id);

Add a new page to a blog

Returns Page which contains following properties.

=over 8

=item filename

(string) BE<lt>EditableE<gt> The base name of the page, used to create the ME<lt>permalinkUrlE<gt>.

=item embeddedImageLinks

(arrayE<lt>ImageLinkE<gt>) A list of links to the images that are embedded within the content of this page.

=item title

(string) BE<lt>EditableE<gt> The title of the page.

=item description

(string) BE<lt>EditableE<gt> The description of the page.

=item textFormat

(string) BE<lt>EditableE<gt> A keyword that indicates what formatting mode to use for the content of this page. This can be CE<lt>htmlE<gt> for assets the content of which is HTML, CE<lt>html_convert_linebreaksE<gt> for assets the content of which is HTML but where paragraph tags should be added automatically, or CE<lt>markdownE<gt> for assets the content of which is Markdown source. Other formatting modes may be added in future. Applications that present assets for editing should use this property to present an appropriate editor.

=item publicationStatus

(PublicationStatus) BE<lt>EditableE<gt> An object describing the draft status and publication date for this page.

=item feedbackStatus

(FeedbackStatus) BE<lt>EditableE<gt> An object describing the comment and trackback behavior for this page.

=item suppressEvents

(boolean) BE<lt>EditableE<gt> An optional, write-only flag indicating that asset creation should not trigger notification events such as emails or dashboard entries. Not available to all applications.

=item id

(string) A URI that serves as a globally unique identifier for the user.

=item urlId

(string) A string containing the canonical identifier that can be used to identify this object in URLs. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

=item permalinkUrl

(string) The URL that is this asset's permalink. This will be omitted if the asset does not have a permalink of its own (for example, if it's embedded in another asset) or if TypePad does not know its permalink.

=item author

(User) The user who created the selected asset.

=item published

(string) The time at which the asset was created, as a W3CDTF timestamp.

=item content

(string) The raw asset content. The ME<lt>textFormatE<gt> property describes how to format this data. Use this property to set the asset content in write operations. An asset posted in a group may have a ME<lt>contentE<gt> value up to 10,000 bytes long, while a OE<lt>PostE<gt> asset in a blog may have up to 65,000 bytes of content.

=item renderedContent

(string) The content of this asset rendered to HTML. This is currently available only for OE<lt>PostE<gt> and OE<lt>PageE<gt> assets.

=item excerpt

(string) A short, plain-text excerpt of the entry content. This is currently available only for OE<lt>PostE<gt> assets.

=item textFormat

(string) A keyword that indicates what formatting mode to use for the content of this asset. This can be CE<lt>htmlE<gt> for assets the content of which is HTML, CE<lt>html_convert_linebreaksE<gt> for assets the content of which is HTML but where paragraph tags should be added automatically, or CE<lt>markdownE<gt> for assets the content of which is Markdown source. Other formatting modes may be added in future. Applications that present assets for editing should use this property to present an appropriate editor.

=item groups

(arrayE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of strings containing the ME<lt>idE<gt> URI of the OE<lt>GroupE<gt> object that this asset is mapped into, if any. This property has been superseded by the ME<lt>containerE<gt> property.

=item source

(AssetSource) An object describing the site from which this asset was retrieved, if the asset was obtained from an external source.

=item objectTypes

(setE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of object type identifier URIs identifying the type of this asset. Only the one object type URI for the particular type of asset this asset is will be present.

=item objectType

(string) The keyword identifying the type of asset this is.

=item isFavoriteForCurrentUser

(boolean) CE<lt>trueE<gt> if this asset is a favorite for the currently authenticated user, or CE<lt>falseE<gt> otherwise. This property is omitted from responses to anonymous requests.

=item favoriteCount

(integer) The number of distinct users who have added this asset as a favorite.

=item commentCount

(integer) The number of comments that have been posted in reply to this asset. This number includes comments that have been posted in response to other comments.

=item title

(string) The title of the asset.

=item description

(string) The description of the asset.

=item container

(ContainerRef) An object describing the group or blog to which this asset belongs.

=item publicationStatus

(PublicationStatus) BE<lt>EditableE<gt> An object describing the visibility status and publication date for this asset. Only visibility status is editable.

=item crosspostAccounts

(setE<lt>stringE<gt>) BE<lt>EditableE<gt> A set of identifiers for OE<lt>AccountE<gt> objects to which to crosspost this asset when it's posted. This property is omitted when retrieving existing assets.


=back

=cut

sub post_to_page_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/page-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub new_to_page_assets {
    my $self = shift;
    Carp::carp("'new_to_page_assets' is deprecated. Use 'post_to_page_assets' instead.");
    $self->post_to_page_assets(@_);
}

=pod



=item get_page_assets

  my $res = $tp->blogs->get_page_assets($id);

Get a list of pages associated with the selected blog.

Returns ListE<lt>PageE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>PageE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_page_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/page-assets.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub page_assets {
    my $self = shift;
    Carp::carp("'page_assets' is deprecated. Use 'get_page_assets' instead.");
    $self->get_page_assets(@_);
}

=pod



=item post_to_post_assets

  my $res = $tp->blogs->post_to_post_assets($id);

Add a new post to a blog

Returns Post which contains following properties.

=over 8

=item categories

(arrayE<lt>stringE<gt>) BE<lt>EditableE<gt> A list of categories associated with the post.

=item embeddedImageLinks

(arrayE<lt>ImageLinkE<gt>) A list of links to the images that are embedded within the content of this post.

=item embeddedVideoLinks

(arrayE<lt>VideoLinkE<gt>) A list of links to the videos that are embedded within the content of this post.

=item embeddedAudioLinks

(arrayE<lt>AudioLinkE<gt>) A list of links to the audio streams that are embedded within the content of this post.

=item title

(string) BE<lt>EditableE<gt> The title of the post.

=item description

(string) BE<lt>EditableE<gt> The description of the post.

=item filename

(string) BE<lt>EditableE<gt> The base name of the post to use when creating its ME<lt>permalinkUrlE<gt>.

=item content

(string) BE<lt>EditableE<gt> The raw post content. The ME<lt>textFormatE<gt> property defines what format this data is in.

=item textFormat

(string) BE<lt>EditableE<gt> A keyword that indicates what formatting mode to use for the content of this post. This can be CE<lt>htmlE<gt> for assets the content of which is HTML, CE<lt>html_convert_linebreaksE<gt> for assets the content of which is HTML but where paragraph tags should be added automatically, or CE<lt>markdownE<gt> for assets the content of which is Markdown source. Other formatting modes may be added in future. Applications that present assets for editing should use this property to present an appropriate editor.

=item publicationStatus

(PublicationStatus) BE<lt>EditableE<gt> An object describing the draft status and publication date for this post.

=item feedbackStatus

(FeedbackStatus) BE<lt>EditableE<gt> An object describing the comment and trackback behavior for this post.

=item reblogCount

(integer) The number of times this post has been reblogged by other people.

=item reblogOf

(AssetRef) A reference to a post of which this post is a reblog.

=item suppressEvents

(boolean) BE<lt>EditableE<gt> An optional, write-only flag indicating that asset creation should not trigger notification events such as emails or dashboard entries. Not available to all applications.

=item id

(string) A URI that serves as a globally unique identifier for the user.

=item urlId

(string) A string containing the canonical identifier that can be used to identify this object in URLs. This can be used to recognise where the same user is returned in response to different requests, and as a mapping key for an application's local data store.

=item permalinkUrl

(string) The URL that is this asset's permalink. This will be omitted if the asset does not have a permalink of its own (for example, if it's embedded in another asset) or if TypePad does not know its permalink.

=item author

(User) The user who created the selected asset.

=item published

(string) The time at which the asset was created, as a W3CDTF timestamp.

=item content

(string) The raw asset content. The ME<lt>textFormatE<gt> property describes how to format this data. Use this property to set the asset content in write operations. An asset posted in a group may have a ME<lt>contentE<gt> value up to 10,000 bytes long, while a OE<lt>PostE<gt> asset in a blog may have up to 65,000 bytes of content.

=item renderedContent

(string) The content of this asset rendered to HTML. This is currently available only for OE<lt>PostE<gt> and OE<lt>PageE<gt> assets.

=item excerpt

(string) A short, plain-text excerpt of the entry content. This is currently available only for OE<lt>PostE<gt> assets.

=item textFormat

(string) A keyword that indicates what formatting mode to use for the content of this asset. This can be CE<lt>htmlE<gt> for assets the content of which is HTML, CE<lt>html_convert_linebreaksE<gt> for assets the content of which is HTML but where paragraph tags should be added automatically, or CE<lt>markdownE<gt> for assets the content of which is Markdown source. Other formatting modes may be added in future. Applications that present assets for editing should use this property to present an appropriate editor.

=item groups

(arrayE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of strings containing the ME<lt>idE<gt> URI of the OE<lt>GroupE<gt> object that this asset is mapped into, if any. This property has been superseded by the ME<lt>containerE<gt> property.

=item source

(AssetSource) An object describing the site from which this asset was retrieved, if the asset was obtained from an external source.

=item objectTypes

(setE<lt>stringE<gt>) BE<lt>DeprecatedE<gt> An array of object type identifier URIs identifying the type of this asset. Only the one object type URI for the particular type of asset this asset is will be present.

=item objectType

(string) The keyword identifying the type of asset this is.

=item isFavoriteForCurrentUser

(boolean) CE<lt>trueE<gt> if this asset is a favorite for the currently authenticated user, or CE<lt>falseE<gt> otherwise. This property is omitted from responses to anonymous requests.

=item favoriteCount

(integer) The number of distinct users who have added this asset as a favorite.

=item commentCount

(integer) The number of comments that have been posted in reply to this asset. This number includes comments that have been posted in response to other comments.

=item title

(string) The title of the asset.

=item description

(string) The description of the asset.

=item container

(ContainerRef) An object describing the group or blog to which this asset belongs.

=item publicationStatus

(PublicationStatus) BE<lt>EditableE<gt> An object describing the visibility status and publication date for this asset. Only visibility status is editable.

=item crosspostAccounts

(setE<lt>stringE<gt>) BE<lt>EditableE<gt> A set of identifiers for OE<lt>AccountE<gt> objects to which to crosspost this asset when it's posted. This property is omitted when retrieving existing assets.


=back

=cut

sub post_to_post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/post-assets.json', @args;
    $api->base->call("POST", $uri, @_);
}


sub new_to_post_assets {
    my $self = shift;
    Carp::carp("'new_to_post_assets' is deprecated. Use 'post_to_post_assets' instead.");
    $self->post_to_post_assets(@_);
}

=pod



=item get_post_assets

  my $res = $tp->blogs->get_post_assets($id);

Get a list of posts associated with the selected blog.

Returns ListE<lt>PostE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>PostE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/post-assets.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub post_assets {
    my $self = shift;
    Carp::carp("'post_assets' is deprecated. Use 'get_post_assets' instead.");
    $self->get_post_assets(@_);
}

=pod



=item get_post_assets_by_category

  my $res = $tp->blogs->get_post_assets_by_category($id, $category);

Get all visibile posts in the selected blog that have been assigned to the given category.

Returns ListE<lt>PostE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>PostE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_post_assets_by_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # category
    my $uri = sprintf '/blogs/%s/post-assets/@by-category/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub post_assets_by_category {
    my $self = shift;
    Carp::carp("'post_assets_by_category' is deprecated. Use 'get_post_assets_by_category' instead.");
    $self->get_post_assets_by_category(@_);
}

=pod



=item get_post_assets_by_month

  my $res = $tp->blogs->get_post_assets_by_month($id, $month);

Get all visible posts in the selected blog that have a publication date within the selected month, specified as a string of the form "YYYY-MM".

Returns ListE<lt>PostE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>PostE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_post_assets_by_month {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # month
    my $uri = sprintf '/blogs/%s/post-assets/@by-month/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub post_assets_by_month {
    my $self = shift;
    Carp::carp("'post_assets_by_month' is deprecated. Use 'get_post_assets_by_month' instead.");
    $self->get_post_assets_by_month(@_);
}

=pod



=item get_recent_post_assets

  my $res = $tp->blogs->get_recent_post_assets($id);

Get the most recent 50 posts in the selected blog, including draft and scheduled posts.

Returns ListE<lt>PostE<gt> which contains following properties.

=over 8

=item totalResults

(integer) The total number of items in the whole list of which this list object is a paginated view.

=item entries

(arrayE<lt>PostE<gt>) The items within the selected slice of the list.


=back

=cut

sub get_recent_post_assets {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/post-assets/@recent.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub recent_post_assets {
    my $self = shift;
    Carp::carp("'recent_post_assets' is deprecated. Use 'get_recent_post_assets' instead.");
    $self->get_recent_post_assets(@_);
}

=pod



=item get_post_by_email_settings_by_user

  my $res = $tp->blogs->get_post_by_email_settings_by_user($id, $userId);

Get the selected user's post-by-email address

Returns PostByEmailAddress which contains following properties.

=over 8

=item emailAddress

(string) A private email address for posting via email.


=back

=cut

sub get_post_by_email_settings_by_user {
    my $api = shift;
    my @args;
    push @args, shift; # id
    push @args, shift; # userId
    my $uri = sprintf '/blogs/%s/post-by-email-settings/@by-user/%s.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub post_by_email_settings_by_user {
    my $self = shift;
    Carp::carp("'post_by_email_settings_by_user' is deprecated. Use 'get_post_by_email_settings_by_user' instead.");
    $self->get_post_by_email_settings_by_user(@_);
}

=pod



=item remove_category

  my $res = $tp->blogs->remove_category($id);

Send label argument to remove a category from the blog

Returns hash reference which contains following properties.

=over 8


=back

=cut

sub remove_category {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/remove-category.json', @args;
    $api->base->call("POST", $uri, @_);
}


=pod



=item get_stats

  my $res = $tp->blogs->get_stats($id);

Get data about the pageviews for the selected blog.

Returns BlogStats which contains following properties.

=over 8

=item totalPageViews

(integer) The total number of page views received by the blog for all time.

=item dailyPageViews

(mapE<lt>integerE<gt>) A map containing the daily page views on the blog for the last 120 days. The keys of the map are dates in W3CDTF format, and the values are the integer number of page views on the blog for that date.


=back

=cut

sub get_stats {
    my $api = shift;
    my @args;
    push @args, shift; # id
    my $uri = sprintf '/blogs/%s/stats.json', @args;
    $api->base->call("GET", $uri, @_);
}


sub stats {
    my $self = shift;
    Carp::carp("'stats' is deprecated. Use 'get_stats' instead.");
    $self->get_stats(@_);
}

=pod
 
=back

=cut
 
### END auto-generated

sub upload_media_asset {
    my $api = shift;
    my( $id, $asset, $filename ) = @_;

    return $api->base->call_upload( {
        # No extension on this!
        target_url  => '/blogs/' . $id . '/media-assets',
        asset       => $asset,
        filename    => $filename,
    } );
}

1;
