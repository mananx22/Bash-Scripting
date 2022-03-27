#!/bin/bash
# Passing parameters with options (./script1.sh -a -b -c -- p1 p2 p3)

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used" ;;
-b) echo "-b option used" ;;
-c) echo "-c option used" ;;
#as soon as we encounter -- we will break this while loop.
--) shift 
break;;
*) echo "option $1 not an option" ;;
esac
shift
done

# till here we have checked all options and met our -- which broke while loop. Now we deal with parameters.
: '
for VARIABLE in 1 2 3 4 5 .. N  ($@ -> $1 $2 $3 .... $N)
do
	command1
	command2
	commandN
done
'
num=1
for param in $@
do
echo "#$num: $param"
num=$(( $num +1 ))
# here we increased the value of num by one. for loop automatically goes to next parameter in next cycle so no need.
done