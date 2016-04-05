#!/bin/bash
#This scripts print the ten of Fibonacci array.
#F1=1;F2=2;FN=F(N-1)+F(N-2)

#Init F1 F2
FA=1
FB=1
FC=$(($FA+$FB))

#Print F1 F2
echo "F1=1"
echo "F2=1"

for(( i= 3;i <= 10 ; i++))
do
	FA=$FB
	FB=$FC
	FC=$(($FA+$FB))
	echo "F$i=$FB"
done


