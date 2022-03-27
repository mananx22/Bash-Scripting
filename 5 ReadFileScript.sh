#!/bin/bash
read -p "enter the fileurl you want to read " filename

while read line; do
echo $line
done < $filename  #with stdin reading from $filename for this while loop
exit 0
