#!/usr/bin/python3

import sys

FILE = sys.argv[1]

JS_FILES = []

with open(FILE, 'rt') as inputfile:
    for line in inputfile:
        if ".js" in line: 
            words = line.split(" ")
            for word in words:
                if ".js" in word:
                    files = word.split("/")
                    file = files[len(files) -1]
                    if file not in JS_FILES :
                        JS_FILES.append(file)

JS_FILES.sort()
print(JS_FILES)
