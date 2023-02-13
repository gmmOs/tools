#!/usr/bin/python3

import sys
from subprocess import Popen, PIPE

BASE_NET = sys.argv[1]
START = sys.argv[2]
END = sys.argv[3]

for x in range(int(START), int(END)+1):
    x = str(x)
    ip = BASE_NET + '.' + x
    hostup = Popen(["ping", "-c1", "-W1", x], stdout=PIPE)
    output = hostup.communicate()[0]
    response = hostup.returncode

    if response == 1:
        print(ip)
