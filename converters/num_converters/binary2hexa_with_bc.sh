#!/bin/sh

N=$1

echo "obase=16;ibase=2;${N}" | bc
