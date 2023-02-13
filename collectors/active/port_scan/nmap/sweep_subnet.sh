#!/bin/sh

SUBNET=$1
OUT_FILE="sweep_${SUBNET}_$(date +%s).response"
nmap -v -sn ${SUBNET}.1-254 -oG ${OUT_FILE}
