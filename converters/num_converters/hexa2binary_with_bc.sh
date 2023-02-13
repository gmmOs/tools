#!/bin/sh

N=$1

echo "obase=2;ibase=16;${N}" | bc
