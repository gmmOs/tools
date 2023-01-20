#!/bin/sh

# based on : ht_tp://www.dest-unreach.org/socat/doc/socat-openssltunnel.html
SERVER_ADDRESS=$1
SERVER_PORT=$2
SERVER_CERT_STORE="/tmp"
SERVER_TRUST_STORE="/tmp"
S="server.crt"

CLIENT_CERT_STORE="/tmp"
CLIENT_TRUST_STORE="/tmp"

CLIENT_CERT_NAME="client.gpg"
C="client.pem"

gpg -o ${C} -d ${CLIENT_CERT_NAME}

socat STDIO OPENSSL-CONNECT:${SERVER_ADDRESS}:${SERVER_PORT},cert=${CLIENT_CERT_STORE}/${C},cafile=${CLIENT_TRUST_STORE}/${S} &
rm ${C}
