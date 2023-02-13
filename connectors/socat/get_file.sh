#!/bin/sh

ADDRESS=$1
PORT=$2
NEW_FILE_NAME=$3

socat TCP4:${ADDRESS}:${PORT} file:${NEW_FILE_NAME},create

