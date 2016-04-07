#!/bin/bash
###################################################
# Name: array.sh
# Description: how to use array in shell scripts
###################################################

new_array[0]="china"
new_array[1]="chinese"
new_array[2]="china"
new_array[3]="chinese"
new_array[10]="china"
new_array[15]="chinese"

let "i=0"
for ele in ${new_array[@]}
do
    let "i++"
    echo "Element[$i] :$ele"
done
