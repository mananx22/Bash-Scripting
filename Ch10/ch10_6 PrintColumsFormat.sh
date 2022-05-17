#!/bin/bash

# Our default print command does not output in proper colums width.
awk 'BEGIN { FS=":"} {print $1,$3,$7}' /etc/passwd

echo ">>>>>>>>>>>>>> XXXXX <<<<<<<<<<<<"
# To apply proper formatting, we can use usual printf command.
awk 'BEGIN { FS=":"} 
{printf "%30s %4d %20s \n",$1,$3,$7}' /etc/passwd   
# Here %30s means 30 character spacing and expect an string. similarly %4d means 4 character spacing expecting integer.


echo ">>>>>>>>>>>>>> XXXXX <<<<<<<<<<<<"
# To apply Even more proper formatting
awk 'BEGIN { FS=":" ; printf "%30s %4s %20s \n","Name","Process","PATH" } 
{printf "%30s %4d %20s \n",$1,$3,$7}' /etc/passwd 


