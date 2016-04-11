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
                echo "Please enter the file name:"
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

########################
#search opreation
search()
{
    if [ $1 != ""];then
        sed -n "/$1/p" $FILE
    else
        echo "Input error"
    fi
}

########################
#add operation
add()
{
    if [ $1 != "" ];then
        echo "Name [$1] Phone [$2] Email [$3]"  >> $FILE
    fi
}

#######################
#remove operation
remove()
{
    if [ $1 != "" ];then
        sed "/$1/d" $FILE
    fi
}

########################
#main
#
 
create_file
echo "What do you want to do:search/add/remove/(q to exit)"
read arg
while [ $arg != "q" ]
do
    case $arg in
    search )
        echo "Please input name:(press q to quit)"
        read NAME
        while [ $NAME != "q" ]
        do
            search $NAME
            read NAME
        done
        echo "What do you want to do:search/add/remove/(q to exit)"
        read arg
    ;;
    add )
        echo "Please input name phone email:(press q to quit)"
        read NAME PHONE EMAIL
        while [ $NAME != "q" ]
        do 
            add $NAME $PHONE $EMAIL
            read NAME PHONE EMAIL
        done
        echo "What do you want to do:search/add/remove/(q to exit)"
        read arg
    ;;
    remove )
        echo "Please input the name you want to remove:(press q to quit)"
        read NAME
        while [ $NMAE != "q" ]
        do
            remove $NAME
            read NAME
        done
        echo "What do you want to do:search/add/remove/(q to exit)"  
        read arg
    ;;
    esac
done
