#!/bin/bash
#This scripts use funtion to tell if the input is a file or not

max_of_three()
{
    if [ $1 -gt $2 ];then
        if [ $1 -gt $3 ];then
            echo $1
        else 
            echo $3
        fi
    elif [ $2 -gt $3 ];then
        echo $2
    else 
        echo $3
    fi
}


read a b c
max_of_three $a $b $c

