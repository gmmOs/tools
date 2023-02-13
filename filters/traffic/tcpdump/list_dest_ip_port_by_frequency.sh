#!/bin/sh

PCAP_FILE=$1

sudo tcpdump -n -r ${PCAP_FILE} | awk -F " " '{print $5}' | \
sort | uniq -c | head
