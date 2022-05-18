#!/usr/bin/python3
import sys
count = len(sys.argv)
name = ''

if ( count == 1 ):
    name = input("Enter a name: ") 
else:
    name = sys.argv[1]

log = open("./script.log","a")
log.write("Hello " + name + "\n")
log.close()
