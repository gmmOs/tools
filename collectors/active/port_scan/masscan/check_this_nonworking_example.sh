#!/bin/sh

SUBNET=$1 ### like:10.11.1.0/24  
RATE="1000"
RAW_INTERFACE="tun0"
ROUTER_IP=$2 ### like:10.11.1.1

#sudo masscan --interactive -p80 ${SUBNET} --rate=${RATE} -e ${RAW_INTERFACE} --router-ip ${ROUTER_IP} -oG masscan.example.txt
sudo masscan --interactive -p80 ${SUBNET} --rate=${RATE} -e ${RAW_INTERFACE} -oG masscan.example.txt
