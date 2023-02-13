#!/bin/sh

TARGET_ADDRESS=$1
START_PORT=$2
END_PORT=$3

OUTPUT_FILE="syn_scaned_${TARGET_ADDRESS}_from_${START_PORT}_to_${END_PORT}.txt"

sudo nmap -sS -p ${START_PORT}-${END_PORT} ${TARGET_ADDRESS} \
       -oG ${OUTPUT_FILE}
