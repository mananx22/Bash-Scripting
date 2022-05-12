#!/bin/bash
# While loop
Count=10
echo -e "While Loop -->"
while (( Count >= 0 )); do
echo -e "$Count \c"
(( Count-- ))
done; echo 

# Until loop
Count=10
echo -e "Until Loop -->"
until (( Count < 0 )); do
echo -e "$Count \c"
(( Count-- ))
done; echo 

