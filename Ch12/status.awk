{ record[$9]++ } # $9 return the error code. 
END {
    for (r in record)
    print r, " has occured ", record[r], " times. "
}


