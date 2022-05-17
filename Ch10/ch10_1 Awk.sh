#!/bin/bash
 
awk 'BEGIN { print "Hello Manan"}'

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
awk ' { print $0 } ' ./httpd.conf # awk CAT command.

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
awk 'BEGIN{FS="\n"; RS="" } {print $1,$3}' ./temp # to read the temp file and display results.