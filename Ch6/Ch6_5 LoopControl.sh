#!/bin/bash
# objective is to use the break and continue keyword in for loop.

path="../*"
#continue
for item in $path; do
    [ -d "$item" ] || continue        
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $item is directory >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
done 

#break
for item in $path; do
    [ -d "$item" ] && break
    echo "$item is file"
done 
echo ">>>>>>>>>>>>>>> $item is directory on which loop exited >>>>>>>>>>>>>>>"