#!/bin/bash
read -p "enter the server address: " srv
ping -c3 $srv 2>&1 > /dev/null || echo "server dead "
# > /dev/null redirects standard output (stdout) to /dev/null, which discards it.
# 2>&1 redirects standard error (2) to standard output (1), which then discards it as well since standard output has already been redirected.
# There are usually 3 file descriptors - standard input, output, and error. When redirecting data streams, & means whatever follows is a file descriptor, not a filename.
exit 0
