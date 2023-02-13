#!/bin/sh

PCAP_FILE=$1

sudo tcpdump -nX -r ${PCAP_FILE}
