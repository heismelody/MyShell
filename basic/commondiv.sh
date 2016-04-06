#!/bin/bash
#This script calculate the lowest common multiple and highest common factor
#of two numbers;

lowest_common_multi()
{
    let "a=$1"
    let "b=$2"
    let "r=$1*$2"
    while [  $a -ne $b ]
    do
        if [ $a -gt $b ];then
            let "a=$a-$b"
        else 
            let "b=$b-$a"
        fi
    done
    echo "$a "
}

highest_common_factor()
{
    let "a=$1"
    let "b=$2"
    if [ $a -lt $b ];then
        let "temp=$a"
        let "a=$b"
        let "b=$temp"
    fi
    let "p=$a*$b"
    while  [ $b -ne 0 ]
    do 
        let "r=$a%$b"
        let "a=$b"
        let "b=$r"
    done
    let "r=$p/$a" 
    echo "$r "
}

LCM_and_HCF()
{
    highest_common_factor $1 $2
    lowest_common_multi $1 $2
}

read numa numb
LCM_and_HCF $numa $numb
