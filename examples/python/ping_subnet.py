#!/usr/bin/python

import ipaddress
from subprocess import Popen, PIPE

net4 = ipaddress.ip_network('10.11.1.0/24')
for x in net4.hosts():
    x = str(x)
    hostup = Popen(["ping", "-c1", "-W1", x], stdout=PIPE)
    output = hostup.communicate()[0]
    response = hostup.returncode

    if response == 0:
        print(x, " 1")
    else:
        print(x, " 0")
