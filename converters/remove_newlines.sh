#!/bin/sh

FILE=$1
awk 'BEGIN{ORS=""}{print}' ${FILE}
