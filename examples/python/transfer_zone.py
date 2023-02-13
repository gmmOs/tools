#!/usr/bin/python3

import sys
from subprocess import Popen, PIPE

domain_name = sys.argv[1]

nameservers = []

host_ns = Popen(["host", "-tns", domain_name ], stdout=PIPE)
output = host_ns.communicate()[0]
response = host_ns.returncode

for t in output.decode().split("\n"):
    ns = t.split(" ")
    nameservers.append( ns[len(ns) - 1] )

for nameserver in nameservers:
    host_l = Popen(["host", "-l", domain_name, nameserver ], stdout=PIPE)
    output_l = host_l.communicate()[0]
    response_l = host_l.returncode

    if response_l == 0:
        for line in output_l.decode().split("\n"):
            if "has address" in line:
                print(line)

#----------------------------- sh version -------------------------
#for nameserver in $( host -t ns ${DOMAIN_NAME} | cut -d " " -f 4 )
#do
#	host -l ${DOMAIN_NAME} ${nameserver} | grep "has address"
#done
