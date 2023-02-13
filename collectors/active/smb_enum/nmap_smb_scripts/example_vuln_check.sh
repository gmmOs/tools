#!/bin/sh

TARGET_IP=$1
nmap -v -p 139,445 --script=smb-vuln-ms08-067 --script-args=unsafe=1 ${TARGET_IP} 
