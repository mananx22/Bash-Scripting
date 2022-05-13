#!/bin/bash
myvar=30
function myfunc() {
    local myvar=50    # This wont be echoed out as it is a local variable and its scope is limited to function.
}
myfunc
echo $myvar
exit 1