#!/bin/sh

SUB_STRING=$1
PRE_FIX=$2
POST_FIX=$3

FILE=$4
grep -o "[^${PRE_FIX}]*${SUB_STRING}[^${POST_FIX}]*" ${FILE}

