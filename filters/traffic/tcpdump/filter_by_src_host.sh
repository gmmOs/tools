#!/bin/sh

PCAP_FILE=$1
SRC_ADDRESS=$2

sudo tcpdump -n src host ${SRC_ADDRESS} -r ${PCAP_FILE}
