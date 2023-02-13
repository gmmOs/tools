#!/bin/sh

PORT=$1
socat -d -d TCP4-LISTEN:${PORT} STDOUT
