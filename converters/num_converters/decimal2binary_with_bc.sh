#!/bin/sh

N=$1

echo "obase=2;ibase=10;${N}" | bc
