#!/usr/bin/env perl

use strict;
use warnings;

use JSON::PP;
use LWP::Simple;

use v5.14; # For say

use constant ACTIONS_URL => 'https://api.github.com/repos/JJ/cv/actions/workflows/generate.yaml/runs';

my $runs = decode_json get( ACTIONS_URL );

my $check_suite_id =  $runs->{'workflow_runs'}[0]{'check_suite_id'};

my $artifacts = decode_json get(  $runs->{'workflow_runs'}[0]{'artifacts_url'} );

my $artifact_id = $artifacts->{'artifacts'}[0]{'id'};
say <<EOC;
# Download CV


[Download zipped CV in PDF](https://github.com/JJ/cv/suites/$check_suite_id/artifacts/$artifact_id)
EOC
