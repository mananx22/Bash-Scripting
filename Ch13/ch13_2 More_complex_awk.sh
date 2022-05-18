#!/bin/bash
: 'The goal of this script is that we print the username and the date, but not the time of the last login. 
We will also print our own header in the BEGIN block. To ensure that we use the correct placements we will 
need to count the fields in each row using the NF internal variable.

If a user is connected directly to host, its IP is a blank field, but not the case for remote user. As a result
local user generate 8 field whereas a remote user generate 9 fields.
For 8 field user we want to print 1,4,5 & 8 field.
For 9 field user we want to print 1,5,6 & 9 field.
We will also use printf to align our column data correctly.
'

lastlog | awk -f 13_2_1.awk 