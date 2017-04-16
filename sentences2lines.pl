#!/usr/bin/env perl

# Utility script to split a text file into one sentence per line.
# Usage: ./sentences2lines.pl > output.txt

my $file_to_split = 'original.txt';

use File::Slurp;
use Lingua::Sentence;

my $splitter = Lingua::Sentence->new("fr");

my $text = read_file($file_to_split) ;
$text =~ s/\r|\n/ /g;

my @sentences = $splitter->split_array($text);

foreach my $sentence (@sentences) {
  # Print to stdout.
  print $sentence . "\n";
}


