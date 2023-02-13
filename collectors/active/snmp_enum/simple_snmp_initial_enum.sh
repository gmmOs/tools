#!/bin/sh

TARGET_LIST=$1
sudo nmap -sU --open -p 161 -iL ${TARGET_LIST} -oG open-snmp.raw.txt
