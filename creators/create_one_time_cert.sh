#!/bin/sh

CERT_NAME=$1
openssl req -newkey rsa:2048 -nodes -keyout ${CERT_NAME}.key -x509 -days 362 -out ${CERT_NAME}.crt
cat ${CERT_NAME}.key ${CERT_NAME}.crt > ${CERT_NAME}.pem
