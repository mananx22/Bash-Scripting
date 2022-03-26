#!/bin/bash

read -p "may i know your name please " name
echo $name

# if we use -n option followed by an integer, we can specify the no. of characters to accept before continuing; lets set it to 1
# if we want to hide the characters we can use -s flag
read -n1 -s -p "press any key to exit"

exit 0