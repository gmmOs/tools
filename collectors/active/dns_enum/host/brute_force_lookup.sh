#!/bin/sh

TARGET=$1
WORD_LIST=$2

for word in $(cat ${WORD_LIST})
do
	host ${word}.${TARGET}
done
