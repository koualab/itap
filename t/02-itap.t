#!usr/bin/perl

use strict;
use warnings;

use Test2::V0;
use Test::Script;

our $VERSION = 0.1;

script_compiles( '../itap', 'Test 1: itap compilation' );
script_runs( [ '../itap', '-help' ], 'Test 2: Showing help' );

done_testing;