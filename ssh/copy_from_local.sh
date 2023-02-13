#!/bin/sh

USER=$1
IP=$2
PORT="2222"
DEST="./"
SRC=$3

scp -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -P ${PORT} ${SRC} ${USER}@${IP}:${DEST} 
