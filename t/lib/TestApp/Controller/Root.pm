# Copyright (c) 2007 Jonathan Rockway <jrockway@cpan.org>

package TestApp::Controller::Root;
use strict;
use warnings;
use base 'Catalyst::Controller';

__PACKAGE__->config(namespace => '');

sub model : Global {
    my ($self, $c) = @_;
    $c->stash->{message} = "model";
    $c->res->body($c->model('Test')->message);
}

sub view : Global {
    my ($self, $c) = @_;
    $c->stash->{message} = "view";
    $c->res->body($c->view('Test')->message);
}

sub controller : Global {
    my ($self, $c) = @_;
    $c->res->body("controller");
}

sub foo : Global {
    my ($self, $c) = @_;
    $c->res->body($c->model('Test')->foo);
}

1;

