package Koha::Plugin::Com::PluginTest::PluginTest;

use Modern::Perl;
use base qw(Koha::Plugins::Base);

our $VERSION = 1.00;

our $metadata = {
    name            => 'Plugin Test',
    author          => 'Lee Jamison',
    description     => 'This is a test plugin to verify the plugins feature works correctly.',
    date_authored   => '2017-08-11',
    date_updated    => '2017-08-11',
    minimum_version => '3.22',
    maximum_version => undef,
    version         => $VERSION,
};

sub new {
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);

    return $self;
}

sub report {
    my ( $self, $args ) = @_;
    
    my $cgi = $self->{'cgi'};
}

sub tool {
    my ( $self, $args ) = @_;

    my $cgi = $self->{'cgi'};
}

sub configure {
    my ( $self, $args ) = @_;

    my $cgi = $self->{'cgi'};
}

sub install() {
    my ( $self, $args ) = @_;

    return 1;
}

sub uninstall() {
    my ( $self, $args ) = @_;

    return 1;
}
