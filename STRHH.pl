#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

#user enters the number of strings
#then from each string, first character and every second character after that in first half of word
#(1st, 3rd, 5th...) in the word is saved as an item of array
#then the array is returned 

my @array =();
my $t = <STDIN>;
foreach my $i_1 (1 .. $t) {
	my $array_item ='';
	my $line = <STDIN>;
	chomp $line;
	my $len_line = length $line;

	for (my $i_2 = 0; $i_2 <= (($len_line)/2-1); $i_2 += 2) {
		$array_item = $array_item.(substr $line, $i_2, 1); 
	}
	push @array, $array_item;
}
foreach my $item (@array) {
	printf "$item\n";
}