#!/bin/bash
OLDIFS="$IFS"
IFS=","
# We enter a while loop to populate three variables that we need. The while loop will read the input file, line by line, and populate each of the variables.
while read product price quantity
do
	echo -e "\033[1;33m$product \
        ========================\033[0m\n\
	Price : \t $price \n\
	Quantity : \t $quantity \n"

done < "./tools"
IFS=$OLDIFS
