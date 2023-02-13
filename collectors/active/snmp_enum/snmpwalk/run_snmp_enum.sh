#!/bin/sh

TARGET_IP=$1
SNMP_VERSION=$2
MIB_NUMBER=$3 ### like cat snmp_users.txt : 1.3.6.1.4.1.77.1.2.25

COMMUNITY_STRING="public"

snmpwalk -c ${COMMUNITY_STRING} -v${SNMP_VERSION} -t 10 ${TARGET_IP} ${MIB_NUMBER}
