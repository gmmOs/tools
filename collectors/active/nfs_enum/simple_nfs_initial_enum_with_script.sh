#!/bin/sh

TARGET_LIST_FILE=$1
nmap -sV -p 111 --script=rpcinfo -iL ${TARGET_LIST_FILE}
