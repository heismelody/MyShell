#!/bin/bash
##############################################################
#Name : addressbook.sh
#Description:create a addressbook program for user.
#It use funtions to perform the task.It allows you to
#search address book,add entries,edit entries,remove entries
##############################################################


#######################
#Initialize the varible
#

#the file name to store data:time (format:1995-09-5-15)
FILE=`date +%x%H | sed 's/年/-/;s/月/-/;s/日/-/'`
OWNER=$UID

#######################
#create the file storing data
#

create_file()
{
    echo "Do you want to create the file:[y/n]"
    read OPTION
    case $OPTION in
    [Yy]*)
        touch $FILE
        echo "You choose yes"
        echo "--Name------Phone------Email--" > $FILE
        ;;
    [Nn]*)
        echo "You didn't create a new file,so you want to open a old file[y/n]"
        read OPTION
        case $OPTION in
            [Yy]*)
                read FILEINPUT
                FILE=$FILEINPUT
                if [ -e $FILE ];then
                    echo "File found."
                else
                    echo "File not found"
                fi
            ;;
            [Nn]*)
            ;;
        esac
        ;;
    esac
}

#######################
#read arg
read_arg()
{
}

########################
#search op
search()
{

}

########################
#main
#
 
create_file
read_arg
