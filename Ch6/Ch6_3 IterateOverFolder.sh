#!/bin/bash

path="../*"

for item in $path; do
    if [ -d "$item" ]
        then 
            echo "$item is directory"
        elif [ -f "$item" ] 
        then
            echo "$item is file"
    fi
done