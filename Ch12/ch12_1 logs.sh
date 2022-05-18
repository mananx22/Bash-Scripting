#!/bin/bash
# all the entries on 10 sep
awk '( $4 ~ /10\/Sep\/2014/ ) { print $1 }' access.log

# counting number of access in a day using variable
awk '( $4 ~ /10\/Sep\/2014/ ) { print $1; COUNT++ } END { print COUNT }' access.log