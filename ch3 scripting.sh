#!/bin/bash
<<commo
This is an example of multi-line comment in bash. 
ternary operator in bash
commandA && commandB || commandC 
commo

: '
This is also an example of multi-line comment in bash. 
'

echo "you are using $( basename $0)"
test -z $1 && echo "you didn't supplied any parameters" || echo "yes you supplied parameter $1"
exit 0
