#!/usr/bin/perl
use strict;
use warnings;
###############
my @args;
@args = @ARGV;
###############
sub get_content_from_file {
  my ( $file, $content ) = shift;
  open(FILE,"$file") or die "$!\n";
  $content .= $_ while <FILE>;
  close(FILE);
  return $content;
}
sub oshidanie {
  my ( $ref_array, $temp ) = @_;
  $temp += $_ foreach @$ref_array;
  my $average = $temp/(($#{$ref_array}+1)*60);
  my ( $hour, $ostatok ) = ($average =~ /(\d+)\.(\d+)/);
  $temp = "0.$ostatok"*60;
  my $min = ($temp =~/(\d*)\./)[0];
  my $oshidanie = join(":",$hour,$min);
  return $oshidanie;
}
main: {
  my $range = [400..450];
  print oshidanie( $range );
}
