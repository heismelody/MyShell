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

##########################
#
#



##########################
#main
#

echo "The number of chilren PID each PPID spawns:"
#ps/print process;
#print $3/print PPID cloume;
#tail/remove the first line:PPID;
echo "--COUNT-PPID-----"
ps -efj | gawk '{print $3}' |  tail -n+2 | sort -n | uniq -c | sort -n
