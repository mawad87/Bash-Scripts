#! /bin/bash

# THIS SCRIPT USED TO CHECK IF 2 FILES RREADABLE OR NOT

# ALSO COMPARE BETWEEN 2 FILES IF THEY ARE THE SAME ORE NOT
 
E_BADARGS=8
E_NOREADFILE1=86
E_NOREADFILE2=87
E_BOTHUNREADABLE=88
 
# checks number of arguments given to script
if [ $# -ne 2 ]; then
   echo "Usage: $(basename $0) FILE1 FILE2"
   exit $E_BADARGS
fi
 
if [ ! -r "$1" ] && [ ! -r "$2" ]; then
   echo "Both $1 and $2 are unreadable"
   exit $E_BOTHUNREADABLE
elif [ ! -r "$1" ]; then
   echo "File $1 is unreadable"
   exit $E_NOREADFILE1
elif [ ! -r "$2" ]; then
   echo "File $2 is unreadable"
   exit $E_NOREADFILE2
else
   echo "Both $1 and $2 ARE readable"
fi
 
if cmp $1 $2 &> /dev/null; then
   echo "$1 and $2 are the same"
else
   echo "$1 an $2 are NOT the same"
fi
