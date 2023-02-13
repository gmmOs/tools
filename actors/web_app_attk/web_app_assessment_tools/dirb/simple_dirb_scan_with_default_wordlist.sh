#!/bin/sh

TARGET_BASE_URL=$1 ###like www.example.com
dirb http://${TARGET_BASE_URL} -r -z 10
