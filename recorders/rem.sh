#!/bin/sh

TO_DELETE=$1
mkdir -p /tmp/deleted
mv ${TO_DELETE} /tmp/deleted
