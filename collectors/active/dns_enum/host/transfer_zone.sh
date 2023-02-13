#!/bin/sh

#### domain_name as name.com
DOMAIN_NAME=$1

for nameserver in $( host -t ns ${DOMAIN_NAME} | cut -d " " -f 4 )
do
	host -l ${DOMAIN_NAME} ${nameserver} | grep "has address"
done
