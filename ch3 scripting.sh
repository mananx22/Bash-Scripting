#!/bin/bash
echo "you are using $( basename $0)"
test -z $1 && echo "you didn't supplied any parameters" || echo "yes you supplied parameter $1"
exit 0
