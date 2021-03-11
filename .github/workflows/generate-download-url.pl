#!/usr/bin/env perl

use strict;
use warnings;
use constant URL_FILE => "download_cv_url.txt";

use Git;

use v5.14; # For say
my $repo = Git->repository (Directory => '.');
my @tags = $repo->command("tag");

my $tag = pop @tags;


my $download_url = "https://github.com/JJ/cv/releases/download/$tag/cv.pdf";

open my $url_file, ">", URL_FILE;
print $url_file $download_url;
close $url_file;

say <<EOC;
# Download CV


[Download latest version of CV in PDF]($download_url)
EOC
