#!/bin/sh

TARGET_ADDRESS=$1

OUTPUT_FILE="banners_${TARGET_ADDRESS}.txt"

sudo nmap -sV -sT -A ${TARGET_ADDRESS} \
       -oG ${OUTPUT_FILE}
