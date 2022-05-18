{ browser[$12]++ }
END {
    for (i in browser)        
    print i, " has accessed ", browser[i], " times." 
}