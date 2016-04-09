#!/bin/bash
####################################################
#Name : stripcomment.sh
#Description: strip out the comment in the input file
#the #! line should not be stripped out
#####################################################

$OPT

#####################################
#check if the file is existing
check_file()
{
    if [ ! -f $1 ];then
        echo "file not found"
        exit
    else
        echo "Your input file is $1" 
    fi
}


######################################
#print out to screen the comment of the input file
print_file_comment()
{
    if [ $# -eq 1 ];then
        grep '^#' $1 |  grep -v '^#!'
    fi
}

#######################################
#check the option is yes or no
check_option()
{
    case $1 in
    [Yy]* ) 
        echo "You choose yes."
        let "OPT=1";;
    [Nn]* )
        echo "You choose no."
        let "OPT=0";;
    * ) 
        echo "Please answer y/n"
    esac
}


#######################################
#main
if [ $# -eq 1 ];then
    check_file $1
    print_file_comment $1
    echo "-------------------------------------------------"
    echo "Do you wish to strip out the comment of $1?[y/n]"
    read OPT
    check_option $OPT
    if [ $OPT -eq 1 ];then
 ##########not finished
        sed -e 's/^#|^[^#!]/a/' $1
    fi    
else
    echo "Usage:$0 filename"
fi


