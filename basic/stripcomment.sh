#!/bin/bash
####################################################
#Name : stripcomment.sh
#Description: strip out the comment in the input file
#the #! line should not be stripped out
#####################################################



#Juge the file is valid
vaild_file()
{
    if [ ! -f $1 ];then
        echo "file not found"
        exit
    else
        echo "Your input file is $1" 
    fi
}


strip_comment()
{
    if [ $# -eq 1 ];then
        grep '^#' $1
    fi 
}


if [ $# -eq 1 ];then
    vaild_file $1
    strip_comment $1
else
    echo "Usage: /basename $0 filename"
fi


