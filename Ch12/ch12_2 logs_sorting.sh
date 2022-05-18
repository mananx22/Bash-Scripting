#!/bin/bash

# Summarizing 404 errors 
awk '($9 ~ /404/ ) { print $9, $7 } ' access.log 



echo ">>>>>>>>>>>>>> XXXXX <<<<<<<<<<<<"
# to remove all duplicates we can use Sort and Uniq
awk '($9 ~ /404/ ) { print $9, $7 } ' access.log | sort -u