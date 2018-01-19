#!/usr/bin/perl
use strict;
use warnings;


local $_ = `maude -no-advise constrained-terms.maude`;
s/\(([0-9\-]+)\)\.[a-zA-Z]+/$1/mgs;
s/:[a-zA-Z]+//mgs;
s!#and!\/\\!gms;
print ;
