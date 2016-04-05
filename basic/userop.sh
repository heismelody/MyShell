#!/bin/bash
#create a user named user1,set his uid 777,the main diretory is /home/user1,his
#group is group1,his shell is /bin/bash
#Email:826550677@qq.com

sudo groupadd group1
sudo useradd -u 777 -d /home/user1 -G group1  user1 
sudo usermod -s /bin/bash user1
