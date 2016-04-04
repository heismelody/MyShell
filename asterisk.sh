#!/bin/bash
#This scripts print asterisk

for (( i = 1 ; i <= 5 ; i ++))
do
    for (( j = 1 ; j <= (2*i-1) ; j++))
        do
	    echo -n "*"
    done
    echo 
done
