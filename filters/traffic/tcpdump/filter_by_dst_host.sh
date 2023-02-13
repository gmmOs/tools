#!/bin/sh

PCAP_FILE=$1
DST_ADDRESS=$2

sudo tcpdump -n dst host ${DST_ADDRESS} -r ${PCAP_FILE}
