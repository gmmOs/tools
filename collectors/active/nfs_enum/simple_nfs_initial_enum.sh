#!/bin/sh

TARGET_LIST_FILE=$1
nmap -v -p 111 -iL ${TARGET_LIST_FILE}
