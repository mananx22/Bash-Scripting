#!/bin/bash

#To check the number of resource hits and sort them we can also do
awk '{ print $7 }' access.log | sort | uniq -c | sort -rn