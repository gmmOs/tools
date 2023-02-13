#!/bin/sh

PORT=$1
FILE_TO_SERV=$2
socat TCP4-LISTEN:${PORT},fork file:${FILE_TO_SERV}
