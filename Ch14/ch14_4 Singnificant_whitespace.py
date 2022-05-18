#!/usr/bin/python3
import sys
count = len(sys.argv)
if (count > 1):
    print("Hello " + sys.argv[1])
    print("The length is: " + str(count))
print ("Exiting " + sys.argv[0])
