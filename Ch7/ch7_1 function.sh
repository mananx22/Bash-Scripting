#!/bin/bash
# redirection and function program

function is_file() {
    if [ ! -f "$1" ] ; then
    echo "$1 does not seem to be a file"
    exit 2
    fi
}

function clean_file() {
    is_file "$1"         
    sed '/^\s*#/d;/^$/d' "$1" >&1   
}
echo " >>>>>>>>>>>>> You selected file $1 <<<<<<<<<<"

echo " >>>>>>>>>>>>> Before cleanup Output is <<<<<<<<<<"
cat "./$1"

echo " >>>>>>>>>>>>> After cleanup Output is <<<<<<<<<<"
clean_file "$1"
exit 1