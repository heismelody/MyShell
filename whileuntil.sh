#!/bin/bash
#This scripts using while and until to tell the difference between them
#Email:826556077@qq.com

i=0
sum=0
until [[ "$i" -gt 98 ]]
do
	#statements
	let "i=i+2"
	let "sum=sum+i"
done
echo "$sum"

i=0
sum=0
while [[ "$i" -lt 100 ]]; do
	#statements
	let "i=i+2"
	let "sum=sum+i"
done
echo "$sum"