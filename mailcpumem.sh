#!/bin/bash
#################################################
#Name:mailcpumem.sh
#Description:this is a shell script to email CPU 
#and MEMORY usage to your input email.
#Data format:
#
#################################################

##############################
#INIT ARGS
#
DEFAULTEMAIL="example@exa.com"
TO_ADDRESS=$DEFAULTEMAIL
FROM_ADDRESS="SENDER"
SUBJECT="Linux mail send example"
BODY_FILE="example"

###############################
#check if the input email is
#vaild
#

check_email()
{
     regex="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?\$"
     if [[ $1 =~ $regex ]];then
         echo "OK"
     else 
         echo "Not ok"
     fi
}

##############################
#file vaild
#
check_file()
{
    if [ -f $1 ];then
        echo "Your input file is :$1"   
    else
        echo "File not found"
    fi
}

###############################
#main
#

echo "Usage:send a mail of cpu and memory usage"
echo "Do you want to use the default email:[y/n]"
read OPT
case $OPT in 
[Yy]*)
    echo "You choose the default email:$DEFAULTEMAIL"
;;
[Nn]*)
    echo "Enter the email you want to send to:"
    read EMAIL
    TO_ADDRESS=$EMAIL
    check_email $TO_ADDRESS
    echo "Please enter the file you want to send:"
    read FILE
    check_file $FILE
    if [ -f $FILE ];then
        BODY_FILE=$FILE
        echo "Sending mails...."
        sleep 1
        mail -s ${SUBJECT} ${TO_ADDRESS} -- -r ${FROM_ADDRESS} < ${BODY_FILE}
        echo "Send email successful!"
    fi

;;
esac 
