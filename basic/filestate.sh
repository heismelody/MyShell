#!/bin/bash
#This scripts create a file and a diretory,and tell which one is 
#file which is a diretory.Then test the exit code.

mkdir dr
if [ -d dr ];then
    echo "dr is a diretory"
elif [ -f dr ];then
    echo "dr is a file"
fi

touch file 
if [ -d file ];then
    echo "file is a diretory"
elif [ -f file ];then
    echo "file is a file"
    if [ -r file ];then
        echo "readable"
    fi
    if [ -w file ];then
        echo "writable"
    fi
    if [ -x file ];then
        echo "Excutable"
    fi
fi
