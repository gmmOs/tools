#!/usr/bin/perl

use strict;
use warnings;

use Net::Ping;

my $ip_base = "10.11.1.";
my @range = (1..254);

my $p = Net::Ping->new();
for (@range){
	my $ip =join "", ${ip_base}, ${_};
	my $return = $p->ping($ip);
	if( $return == 0 ){
		print("${ip} 1\n");
	}else{
		print("${ip} 0\n");
	}
}
$p->close();
