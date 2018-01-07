#!/bin/bash

NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS"]
then
    echo "Usage:"
exit $E_BADARGS
fi


