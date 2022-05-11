#!/bin/bash

# using double parenthesis for arithmetic expansion.
count=1
(( count++ ))
echo "1->" $count

# we can achieve the same result in longhand by using
counte=1
(( counte=counte+1 ))
echo "2->" $counte


# another benefit is that we can simple use >,< insteat of -gt, -lt 

(( count>1 )) && echo "3-> Count is greater than 1"


