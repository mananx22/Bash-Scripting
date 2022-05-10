#!/bin/bash
# we use parameter substitution to provide default values to a script

read -p "enter your name or else it'll be Anonymous" name
name=${1:-"Anonymous"}
echo "hello $name"
exit 0