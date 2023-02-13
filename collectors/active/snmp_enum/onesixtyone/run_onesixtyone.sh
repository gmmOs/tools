#!/bin/sh

TARGET_LIST=$1 #newline separeted ip list file
COMMUNITY_WORDS=$2 #newline separeted community word list file
onesixtyone -c ${COMMUNITY_WORDS} -i ${TARGET_LIST}
