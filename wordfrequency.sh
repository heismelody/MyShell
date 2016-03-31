#!/bin/bash
#This scripts count the frequency of word in the input file 
#Usage:frequency [-m] [filename],
#		-m   show the max frequency of word in the input file
#Email:826556077@qq.com

E_BADARGS=55
E_FILENOTFOUND=56

#To make sure the input file name and the args is right
#if the args are not right ,return args 55.
if [ $# -gt '3' ] ;then
	echo "Usage:frequency [-m] filename"
	exit $E_BADARGS
elif [ $# -eq 3 ];then
	
	if [ $1 != "frequency" ];then
		echo "Usage : frequency [-m filename]"
		exit $E_BADARGS
	fi
	if [ $2 != "-m" ];then
		echo "Usage : frequency [-m] filename"
		exit $E_BADARGS
	fi
elif [ $# -eq 2 ];then
	if [ $1 != "frequency" ];then 
		echo "Usage : frequency  filename"
		exit $E_BADARGS
	fi
	if [ $2 = "-m" ];then
		echo "Usage : frequency filename "
		exit $E_BADARGS
	fi
fi

#IF the iuput file is exist or not 
#if the file dont exist,then return 56 bad error
if [ $# -eq "2" ];then
	if [ ! -f $2 ];then
		echo "File doesnt exist"
		exit $E_FILENOTFOUND
	fi
elif [ $# -eq 3 ];then
	if [ ! -f $3 ];then 
		echo "File not found"
		exit $E_FILENOTFOUND
	fi
fi

if [ $# -eq "2" ];then
	sed -e 's/\.//g' -e 's/\,//g' -e 's/\://g' -e 's/ /\n/g' "$2" | sort | uniq -c | sort -nr
else 
	sed -e 's/\.//g' -e 's/\,//g' -e 's/\://g' -e 's/ /\n/g' "$3" | sort | uniq -c | sort -nr | head -1
fi

exit 0
