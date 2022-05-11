#!/bin/bash
# By Default IFS variable has the value of one of (space, newline or tab)
file=".././README.md"


echo ">>>>>>>>>>>>>>>>>>example 1 <<<<<<<<<<<<<<<<<<<<"
for k in $(cat $file); do
echo $k
done

# Here we need to change IFS variable to change to new line Instead.
echo ">>>>>>>>>>>>>>>>>>example 2 <<<<<<<<<<<<<<<<<<<<"
IFS=$'\n'
for k in $(cat $file); do
echo $k
done

# IF IFS is a normal character we not need to enclose it and use $ sign
echo ">>>>>>>>>>>>>>>>>>example 3 <<<<<<<<<<<<<<<<<<<<"
IFS=a   # normal char
for k in $(cat $file); do
echo $k
done
