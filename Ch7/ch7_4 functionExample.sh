#!/bin/bash
# figure out how else we can return a function output and assign it to a variable and use that variable in IF statement. Script working but no real solution found.
function to_lower() {    
    echo "the value recieved inside function is $1 \n "
    output=$( echo $1 | tr [:upper:] [:lower:] )
}

while true 
do
    read -p "Enter c for continue and q to quit: "     
    echo "the value recieved outside function is $REPLY"
    to_lower "$REPLY"
    RUN=$output
    echo "the value of RUN is $RUN"
    if [[ $RUN == 'q' ]] ; then
        break    
    fi   
done
echo "Finished"
