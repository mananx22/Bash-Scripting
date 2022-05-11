#!/bin/bash
# we use parameter substitution to provide default values to a script

echo "enter your name as \$1 parameter to script else it'll be \"Anonymous\"" 
name=${1-"Anonymous"}
# can also write it as name=${1:-"Anonymous"}
echo "Hello \"$name\""
exit 0