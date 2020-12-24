#!usr/bin/perl

use strict;
use warnings;

our $VERSION = 0.1;
use Test::More;

## no critic qw()
eval 'use Test::Code::TidyAll 0.20';
if ($@) {
	plan skip_all =>
		"Test::Code::TidyAll 0.20 required to check if the code is clean.";
}
tidyall_ok();
