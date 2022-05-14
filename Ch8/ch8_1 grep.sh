#!/bin/bash
# redirection and function program

read -p "Enter a username to create: "
if (grep "$REPLY" /etc/passwd > /dev/null) ; then
echo "The user already exist"
fi
exit 1