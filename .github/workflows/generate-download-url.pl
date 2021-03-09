#!/usr/bin/env perl

use strict;
use warnings;

use JSON::PP;
use LWP::Simple;

use v5.14; # For say

use constant ACTIONS_URL => 'https://api.github.com/repos/JJ/cv/actions/workflows/generate.yaml/runs';

my $runs = decode_json get( ACTIONS_URL );

my $artifacts = decode_json get(  $runs->{'workflow_runs'}[0]{'artifacts_url'} );

say <<EOC;
# Download CV


[Download zipped CV in PDF]($artifacts->{'artifacts'}[0]{'archive_download_url'};)
EOD
