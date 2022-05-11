#!/bin/bash
:'"Test" command can be used to drive out conditional statements 


For eg: to check whether a file is present or not we use -e such as
'
echo $(test -e README.md) $?

# If we need to open a file from within our script, we test that the file is both a regular file and has the read permission set. 
# -a for AND, -o for OR statement within test.
echo $(test -f README.md -a -r README.md) $?

# we can also write above command as 
echo $([ -f README.md -a -r README.md ]) $?

# [ is a command for both a shell built-in and a standalone file. Using the type command, we can verify this:
type -a [

# [[ is bash's improvement to the [ command. It has several enhancements that make it a better choice if you write scripts that target bash. 

echo "Example1"
file=./README.md
echo $( [ -f "$file" ] ) $?   "using single []"
# to correctly handle empty strings or file names with spaces in them. With [[ the quotes are unnecessary:
echo $( [ -f $file ] ) $?   "using [[]]"