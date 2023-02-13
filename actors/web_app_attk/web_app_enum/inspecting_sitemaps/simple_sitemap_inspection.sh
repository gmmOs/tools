#!/bin/sh

TARGET_BASE_URL=$1
curl ${TARGET_BASE_URL}/robots.txt -o robots.txt
curl ${TARGET_BASE_URL}/sitemap.xml -o sitemap.xml
