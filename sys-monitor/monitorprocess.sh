#!/bin/bash
####################################################################
#Name:monitorprocess.sh
#Description:monitor all running processes and keep track of
#how many child processes each parent spawns.If a process spawns 
#more than 5 children.This script writes a report to a log file 
#every hour including the time,pid of the parent,number of
#children pids.
#####################################################################
#Note:if you want to let this script report
#every hour,please copy it to/etc/cron.hourly!
#####################################################################

#########################
#Init the variable
#
LOGFILE=`date +"%m-%e"`
LOGFILE="/var/log/process-$FILE.log"
CUR_DIR=$(pwd)

##########################
#create the log file
#
create_log_file()
{
    if [ CUR_DIR = /etc/cron.hourly  ];then
        let "OPTION=y"
    else
        echo "Do you want to create the log file in the /var/log:[y/n]"
        read OPTION
    fi
    case $OPTION in
    [Yy]*)
        echo "You choose yes"
	if [ -e $LOGFILE ];then
            echo "File exist,so you dont need to create it"
        else  
            sudo touch $LOGFILE
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
echo "The number of chilren PID each PPID spawns:" | sudo tee -a $LOGFILE
#ps/print process;
#print $3/print PPID cloume;
#tail/remove the first line:PPID;
date | sudo tee -a $LOGFILE
sudo sh -c "echo "--COUNT-PPID---" >> $LOGFILE"
ps -efj | gawk '{print $3}' |  tail -n+2 | sort -n | uniq -c | sort -n | sudo tee -a $LOGFILE

### this command is to merge the (logfile) and (ps -ejf) output file a
#join -1 2 -2 2  <(sort  -k 2 /var/log/process-04-17.log) <(sort -k 2 a) | sort -n
