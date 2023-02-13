#!/bin/sh

### BASE_NET as 192.168.0
BASE_NET=$1
START=$2
END=$3

for ip in $(seq ${START} ${END})
do
       	host ${BASE_NET}.${ip} | grep -v "not found"
done
