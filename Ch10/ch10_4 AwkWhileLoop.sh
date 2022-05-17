#!/bin/bash
 
# defining While loop
awk '{ 
total = 0
i = 1
while ( i < 4 ) # here i represts the Field in line, not the row.
{
    total += $i
    i++
}
mean = total/3
print "mean value: ", mean
}' ./count2  

