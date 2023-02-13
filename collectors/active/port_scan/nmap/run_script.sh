#!/bin/sh

TARGET=$1
SCRIPT_NAME=$2

nmap --script=${SKRIPT_NAME} ${TARGET}
