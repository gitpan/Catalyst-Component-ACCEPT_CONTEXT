# Copyright (c) 2007 Jonathan Rockway <jrockway@cpan.org>

package TestApp::Model::Test;
use strict;
use warnings;
use base qw(Catalyst::Component::ACCEPT_CONTEXT Catalyst::Model);

sub message {
    my $self = shift;
    return $self->context->stash->{message};
}

1;

