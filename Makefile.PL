use inc::Module::Install;
use strict;
use warnings;

name 'Catalyst-Component-ACCEPT_CONTEXT';
all_from 'lib/Catalyst/Component/ACCEPT_CONTEXT.pm';
requires 'Catalyst';
build_requires 'Test::More';
auto_install;
WriteAll;

