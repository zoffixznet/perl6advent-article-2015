#!/usr/bin/env perl

use strict;
use warnings;
use 5.022;

use Mojo::Util qw/slurp  decode  encode/;

my $line = 1;
my $code = join "\n", map sprintf('%2d   %s', $line++, $_),
    split /\n/, decode 'utf8', slurp 'data.html';

say encode 'utf8', $code;

