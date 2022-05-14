#!/bin/bash

function calc_factorial() {
    if [ $1 -eq 1 ]      
    then
        echo 1
    else
        local var=$(( $1 - 1 ))    
        local res=$(calc_factorial $var)
        echo $(( $res * $1)) 
    fi
}

read -p "Enter a number: " value    
factorial=$(calc_factorial $value)
echo "The factorial of $value is: $factorial"
