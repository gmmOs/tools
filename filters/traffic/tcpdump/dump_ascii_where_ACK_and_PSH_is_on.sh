#!/bin/sh

PCAP=$1
sudo tcpdump -A -n 'tcp[13]=24' -r ${PCAP}
