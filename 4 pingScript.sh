#!/bin/bash
read -p "enter the server address: " srv
ping -c3 $srv 2>&1 > /dev/null || echo "server dead "
# > /dev/null redirects standard output (stdout) to /dev/null, which discards it.
# 2>&1 redirects standard error (2) to standard output (1), which then discards it as well since standard output has already been redirected.
exit 0
