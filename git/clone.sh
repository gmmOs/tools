!#/bin/sh

USERNAME=$1
REPO=$2

TOKEN="token.gpg"
git clone https://${USERNAME}:$(gpg -d token.gpg )@github.com/${USERNAME}/${REPO}
