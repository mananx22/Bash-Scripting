!( /Never logged in/ || /^Username/ || /^root/ ){
    cnt++
    print $0;
}
END {
    print "==================================="
    print "Total Number of Users Procesed: ", cnt
}

# We do not include lines that contain "Never logged in", nor do we include lines that start with USERNAMe. This removes the header-line that is printed by lastlog. Finally, we exclude the root account from the display. This initiates the rows that we work with and the main code block will print those lines.
# !( /Never logged in/ || /^Username/ || /^root/ ){
#     print $0
# }