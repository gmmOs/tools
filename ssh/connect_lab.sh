#!/bin/sh

USER=$1
IP=$2
PORT="2222"

ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" ${USER}@${IP} -p ${PORT}
