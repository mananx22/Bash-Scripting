#!/bin/bash

function myfunc() {
    arr=$@
    echo "The array from isnide the function: ${arr[*]}"
}

test_arr=(1 2 3)
echo "the original array is : ${test_arr[*]}"
myfunc ${test_arr[*]}
exit 1