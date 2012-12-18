#!/usr/bin/perl
use strict;
use warnings;
###############
my @args;
@args = @ARGV;
###############
sub get_content_from_file {
  my ($file) = @_;
  my $content;
  open(FILE,"$file") or die "$!\n";
  while (<FILE>) {
    $content.="$_";
  }
  close(FILE);
  return $content;
}
sub oshidanie {
  my ($ref_array) = @_;
  my $temp;
  map {$temp+=$_;} @{$ref_array};
  my $average = $temp/(($#{$ref_array}+1)*60);
  undef $temp;
  my ($hour,$ostatok) = ($average =~ /(\d+)\.(\d+)/);
  $temp = "0.$ostatok"*60;
  my $min = ($temp =~/(\d*)\./)[0];
  undef $temp;
  my $oshidanie = join(":",$hour,$min);
  return $oshidanie;
}
main: {
  my @array;
  map {push(@array,$_)} 400..450;
  my $ref = \ @array;
  oshidanie($ref);
}