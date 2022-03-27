#!/bin/bash
# Read options values (./script1.sh -a -b -c -- p1 p2 p3)
# We have seen how to identify options and parameters, but we still need a way to read the options values correctly.

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used" ;;

-b) param="$2"
echo "-b option passed with a parameter $param"
shift ;;

-c) echo "-c option used" ;;
#as soon as we encounter -- we will break this while loop.
--) shift 
break;;
*) echo "option $1 not an option" ;;
esac
shift
done

# this parameter section part of code runs only if we initiate script with -- in between options.
num=1
for param in $@
do
echo "#$num: $param"
num=$(( $num +1 ))
done