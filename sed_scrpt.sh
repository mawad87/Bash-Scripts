#!/bin/bash

E_BADARGS=65

if [ $# -eq 0 ]
then
    echo "Usage: (basename $0) file"
    exit E_BADARGS
else
    for i
    do
        sed -e '1,/^$/d' -e '/^$/d' $i
    done
fi
