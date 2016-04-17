#!/bin/bash
####################################################################
#Name:monitorprocess.sh
#Description:monitor all running processes and keep track of
#how many child processes each parent spawns.If a process spawns 
#more than 5 children,then send an email to the system adminstrator
#with all relevant information,including the tiem ,Pid of the parent,
#Pid of the children.This script writes a report to a log file 
#every half an hour.
#####################################################################

#########################
#Init the variable
#

FILE=`date +"%m-%e"`
FILE="/var/log/process-$FILE.log"
##########################
#create the log file
#


create_log_file()
{
    echo "Do you want to create the log file in the /var/log:[y/n]"
    read OPTION
    case $OPTION in
    [Yy]*)
        echo "You choose yes"
	if [ -e $FILE ];then
            echo "File exist,so you dont need to create it"
        else  
            sudo touch $FILE
        fi
        ;;
    [Nn]*)
        echo "You choose No"
        ;;
    esac
}


##########################
#main
#

create_log_file
echo "The number of chilren PID each PPID spawns:" | sudo tee -a $FILE
#ps/print process;
#print $3/print PPID cloume;
#tail/remove the first line:PPID;
date | sudo tee -a $FILE
sudo sh -c "echo "--COUNT-PPID---" >> $FILE"
ps -efj | gawk '{print $3}' |  tail -n+2 | sort -n | uniq -c | sort -n | sudo tee -a $FILE
#join -1 2 -2 2  <(sort  -k 2 /var/log/process-04-17.log) <(sort -k 2 a) | sort -n

