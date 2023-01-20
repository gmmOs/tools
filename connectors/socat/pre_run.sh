#!/bin/sh

# based on : ht_tp://www.dest-unreach.org/socat/doc/socat-openssltunnel.html
# generates one-time-cert pairs
#Server base name
S=$1
SERVER_PORT=$2
SERVER_CERT_STORE="/tmp"
SERVER_TRUST_STORE="/tmp"

#Client base name
C=$3
CLIENT_CERT_STORE="/tmp"
CLIENT_TRUST_STORE="/tmp"

openssl genrsa -out ${S}.key 2048
openssl req -new -key ${S}.key -x509 -days 1 -out ${S}.crt

cat ${S}.key ${S}.crt >${S}.pem
rm ${S}.key
chmod 600 ${S}.pem

openssl genrsa -out ${C}.key 2048
openssl req -new -key ${C}.key -x509 -days 1 -out ${C}.crt

cat ${C}.key ${C}.crt >${C}.pem
rm ${C}.key
chmod 600 ${C}.pem

mv ${S}.pem ${SERVER_CERT_STORE}/
mv ${C}.crt ${SERVER_TRUST_STORE}/

mv ${C}.pem ${CLIENT_CERT_STORE}/
mv ${S}.crt ${CLIENT_TRUST_STORE}/
