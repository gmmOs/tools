#!/bin/sh

# based on : ht_tp://www.dest-unreach.org/socat/doc/socat-openssltunnel.html
SERVER_PORT=$2
SERVER_CERT_STORE="/tmp"
SERVER_TRUST_STORE="/tmp"
SERVER_CERT_STORED="server.gpg"

S="server.pem"
gpg -o ${C} -d ${SERVER_CERT_STORE}/${SERVER_CERT_STORED}

CLIENT_CERT_STORE="/tmp"
CLIENT_TRUST_STORE="/tmp"
C="client.crt"

socat OPENSSL-LISTEN:${SERVER_PORT},reuseaddr,cert=${S},cafile=${SERVER_TRUST_STORE}/${C} PIPE &
rm ${S}
