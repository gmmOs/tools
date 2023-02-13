#!/bin/sh

#### domain_name as name.com
DOMAIN_NAME=$1

host -t ns ${DOMAIN_NAME} | cut -d " " -f 4
