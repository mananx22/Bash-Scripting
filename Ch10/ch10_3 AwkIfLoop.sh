#!/bin/bash
 
# defining IF loop
awk '{ 
if ($1 > 10)
print $1
}' ./count  

echo '>>>>>>>>>>>>>>>> XXXXXXX <<<<<<<<<<<<<<'
# defining IF-else loop
awk '{ 
if ($1 > 10)
{
    print "Value more than 10: " $1
} else {
    print "Value less than 10: "$1
    }
}' ./count  