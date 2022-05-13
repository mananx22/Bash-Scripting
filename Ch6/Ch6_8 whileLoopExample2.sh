#!/bin/bash
: ' 
Using the read command in the condition of the whileloop, we loop to take input from user.
' 


while true 
do
    clear
    echo "Select an option"
    echo "a: Backup"
    echo "b: Display Calendar"
    echo "c: Exit"
    read -sn1
    case "$REPLY" in
    a) tar -czvf $HOME/manan/Backup.tgz ${HOME}/bin;;
    b) cal ;;
    c) exit 0 ;;
    esac
    read -n1 -p "Press Any Key To Continue"
done