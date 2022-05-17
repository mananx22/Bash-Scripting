#!/bin/bash
# defining FOR loop
awk '{ 
total = 0
for ( i=1; i<4; i++ ) # here i represts the Field in line, not the row.
{
    total += $i   
}
mean = total/3
print "mean value: ", mean
}' ./count2