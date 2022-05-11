#!/bin/bash
# Make a user change password on first Login using passwd -e username & for loop

for k in bob man; do
useradd $k
echo $k
echo "$k:Password1" | chpasswd # pipe the created user to chpasswd
passwd -e $k
done