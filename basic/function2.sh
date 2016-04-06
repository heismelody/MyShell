#!/bin/bash
#This scripts use funtion to reverse a number

reverse_number()
{
    let "a=$1%10"
    let "e=$1/10000"
    let "d=($1-e*10000)/1000"
    let "c=($1-e*10000-d*1000)/100"
    let "b=($1-e*10000-d*1000-c*100)/10"

    if [ $e -ne 0 ];then
	echo "5 digit :$a $b $c $d $e"
    elif [ $d -ne 0 ];then
        echo "4 digit :$a $b $c $d"
    elif [ $c -ne 0 ];then
        echo "3 digit :$a $b $c" 
    elif [ $b -ne 0 ];then
        echo "2 digit:$a $b"
    elif [ $a -ne 0 ];then 
        echo "1 digit :$a"
    fi
}

read num
reverse_number $num
