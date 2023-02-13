#!/bin/sh

N=$1

echo "obase=10;ibase=2;${N}" | bc
