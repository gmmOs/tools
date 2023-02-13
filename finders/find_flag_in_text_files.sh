#!/bin/sh

ALLOWED_CHARS="a-f0-9"
CHAR_NUMBER="32"
awk '$0 ~ /OS\{['${ALLOWED_CHARS}']{'${CHAR_NUMBER}'}/ {print}' ./*
