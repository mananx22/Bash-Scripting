#!/bin/bash
: '
build a script that prompts the operator for a filename,
a search string, and an operation to carry out with 
the grep command.
'
usage="Usage: search file string operation"

# this part make sure the program recieve 3 parameters only.
if [ ! $# -eq 3 ] ; then
echo "$usage"
exit 2
fi

# -f $1: If the entered parameter is a regular file and exists.
[ ! -f $1 ]  &&  exit 3

case $3 in 
[cC])
#This prints only a count of the lines that match a pattern
msg="counting the matches in $1 of $2"
opt="-c"
;;
[pP])
msg="Print the matches of $2 in $1"
opt=""
;;
[dD])
# This prints out all the lines that do not matches the pattern
msg="Printing all lines but those mathcing $3 from $1"
opt="-v"
;;
*) echo "Could not evaluate $1 $2 $3 ";;
esac
echo $msg
# grep [options] pattern [files]
grep $opt $2 $1





exit 0
