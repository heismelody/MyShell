#!/bin/bash
#This scripts uses if/else structe,if/elif and case structure.

BAD_ARGS=599

if [ $# != 1 ];then
	echo "Usage :$0 [1~7]"
else
	if [ $1 -lt 1 ] || [ $1 -gt 7 ];then
		echo "args should between 1 to 7"
	else
		if [ $1 -ge 1 ] && [ $1 -le 7 ];then
			if [ $1 -eq 1 ];then
				echo "Monday"
			else
				if [ $1 -eq 2 ];then
					echo "Tuesday"
				else
					if [ $1 -eq 3 ];then
						echo "Wednesday"
					else
						if [ $1 -eq 4 ];then
							echo "Thursday"
						else
							if [ $1 -eq 5 ];then
								echo "Friday"
							else
								if [ $1 -eq 6 ];then
									echo "Saturday"
								else 
									if [ $1 -eq 7 ];then
										echo "Sunday"
									fi
								fi
							fi
						fi
					fi
				fi
			fi 
		fi	   
	fi
fi

