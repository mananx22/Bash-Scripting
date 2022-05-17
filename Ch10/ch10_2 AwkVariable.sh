#!/bin/bash
 
# We can define awk variable using anytext BUT NUMBERS!!

awk ' 
BEGIN{ 
    var1="Welcome Manan"
    var2=2
    var3=3
    var4=var2+var3
    print var1
    print var4
}'