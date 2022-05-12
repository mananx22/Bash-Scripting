#!/bin/bash
# Outputting for loop result to a Random file/
path="../*"

for item in $path; do
    if [ -d "$item" ]
        then 
            echo "$item is directory"
        elif [ -f "$item" ] 
        then
            echo "$item is file"
    fi
done > Redirection.txt

# For loop can also be written using C syntax

for (( v=1; v<=5; v++))
do  
    echo "$v"
done