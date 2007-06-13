#!/usr/bin/perl
# 02-live-stash.t 
# Copyright (c) 2007 Jonathan Rockway <jrockway@cpan.org>

use strict;
use warnings;
use Test::More tests => 2;

use FindBin qw($Bin);
use lib "$Bin/lib";
use Catalyst::Test qw(TestApp);

is( get('/stash'), 'it worked', q{stashing doesn't leak} );
ok( get('/cycle'), 'no cycles');

