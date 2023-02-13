#!/bin/sh

USER=$1
IP=$2
PORT=$3
DEST="./"
SRC=$4

scp -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -P ${PORT} ${SRC} ${USER}@${IP}:${DEST} 
