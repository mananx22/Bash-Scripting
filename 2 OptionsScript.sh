#!/bin/bash
# this simple bash script is used to determine whether options passed while running exist or not.
# to run we do script.sh -a -b 29 -c. The script will result in echoing all options and if they exist or not.

# for each option, we use while loop. while checks if the case meets or not.
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used" ;;
-b) echo "-b option used" ;;
-c) echo "-c option used" ;;
*) echo "option $1 not an option" ;;
esac
# after checking each case, while loop shift. shift command makes $2 -> $1. instead of using i++
shift
done