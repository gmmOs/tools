#!/bin/sh

TARGET_IP=$1
nmap -v -p 139, 445 --script=smb-os-discovery ${TARGET_IP}
