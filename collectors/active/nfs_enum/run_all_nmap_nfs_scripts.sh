#!/bin/sh

TARGET_IP=$1
nmap -p 111 --script nfs* ${TARGET_IP}
