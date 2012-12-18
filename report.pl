#!/usr/bin/perl
use strict;
use warnings;

sub help {
  print <<help;
   +---------------------------------------------------------+
[ The script takes two parameters, the first is a csv file  ]
[ the second is a json file.                                ] 
[ Example: perl script.pl 1.csv 2.json                      ]
[ Development by l3talka, skype:l3talka                     ]
 +---------------------------------------------------------+
help
  
}
main: {
  $ARGV[0] = "-h" ? help() : print "";
}