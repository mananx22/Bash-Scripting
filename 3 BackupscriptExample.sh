#!/bin/bash
read -p "enter the file types/names you want to be backed up" file_suffix
read -p "enter the path to directory you want to back up to:" directory

#To concatenate strings in Bash, we can write the string variables one after another or concatenate them using the += operator.
dir_name=$HOME/$directory
echo "initiaing backup to $dir_name"

# now we will test if directory exist. if not exist, we will create it. we use OR operator.
# second command is executed only if first one fails.
test -d $dir_name || mkdir -m 700 $dir_name
# so we make one directory with rwx access to user.
# find everything in $pwd 
find $PWD -iname "*$file_suffix*" -exec cp {} $dir_name/ \;
exit 0
