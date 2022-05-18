#!/bin/bash
# this uses status.awk
awk -f status.awk access.log

echo ">>>>>>>>>>>>>> XXXXX <<<<<<<<<<<<"
awk -f 404.awk access.log
