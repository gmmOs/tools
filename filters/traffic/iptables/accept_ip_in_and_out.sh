#!/bin/sh

IP=$1
sudo iptables -I INPUT 1 -s ${IP} -j ACCEPT
sudo iptables -I OUTPUT 1 -d ${IP} -j ACCEPT
