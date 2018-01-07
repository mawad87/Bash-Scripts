#!/bin/bash

MIN=10

if [ -n "$1" ]
then
     echo "1st one is $1"
fi

if [ -n "$2" ]
then
     echo "2nd one is $1"
fi

if [ -n "$3" ]
then
     echo "3rd one is $1"
fi

if [ -n "$4" ]
then
     echo "4th one is $1"
fi

if [ -n "$5" ]
then
     echo "5th one is $1"
fi

if [ -n "$6" ]
then
     echo "6th one is $1"
fi

if [ -n "$7" ]
then
     echo "7th one is $1"
fi

if [ -n "$8" ]
then
     echo "8th one is $1"
fi

if [ -n "$9" ]
then
     echo "9th one is $1"
fi

if [ -n "${10}" ]
then
    echo "10th on is ${10}"
fi

echo "List of arguments: "$*""
echo "Name of Script: \""$0"\""

if [$# -lt "$MIN"]
then
    echo "Not enough arguments, need 10 to run"
fi
