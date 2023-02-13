#!/bin/sh

TARGET_IP=$1
SNMP_VERSION=$2
snmpwalk -c public -v${SNMP_VERSION} -t 10 ${TARGET_IP}
