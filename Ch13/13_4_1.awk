BEGIN{
    FS="[><]";
    RS="\n\n";
    OFS=""; # here we set it as space, so that when the result is printed, it gets printed without angle brackets ><
}

$0 ~ search { print $4 ": " $5, "   " $8 ": " $9, "   " $12 ": " $13 }