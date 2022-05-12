#!/bin/bash
: ' 
Using the read command in the condition of the whileloop, we loop as long as we have more lines to read from the 
file. We specify the input file directly after the done keyword. For each line that we read from the file, 
we can test whether the server is up with the ping command, and, if the server is responding, 
we append it to a list of available servers 
' 


while read VarServer; do
ping -c1 $VarServer && servers_up="$servers_up $VarServer"
done < ./servers.txt
echo " The following server ar e up: $servers_up"

