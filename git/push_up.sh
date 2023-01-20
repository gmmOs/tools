#!/bin/sh

TOKEN="token.gpg"
cp .git/config /tmp/config.old
sed -i "s/:@/$(gpg -d ${TOKEN})/" .git/config
git push
mv /tmp/config.old .git/config
