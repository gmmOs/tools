#!/bin/sh

PCAP_FILE=$1
PORT=$2

sudo tcpdump -n port ${PORT} -r ${PCAP_FILE}
