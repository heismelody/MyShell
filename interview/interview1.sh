#!/bin/bash
######################################################################
#Name:
#	interview1.sh
#Descirption:
#	there are two txt file named:score.txt,info.txt.And the
#info file store the basic information of students,the score file store
#all score of students in the final exam.
#Print the higest score of each department and his name(not including
#the person whose score is below 60.)
######################################################################

############
#check file
#
file_exist()
{ 
    if [ -e $1 ];then
        echo "$1 found"
    else 
        echo "$1 not found"
    fi
}


############
#main 
#
file_exist info.txt
file_exist score.txt

sed -n '2,$p' info.txt | sort
sed -n '2,$p' score.txt | sort
