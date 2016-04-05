#!/bin/bash
#This scripts create a user group1,and sys group group2
#change the Gid of group to 103,and the name of it to grouptest
#delete this group

sudo groupadd group1
sudo groupadd group2
sudo groupmod -g 555 group2
sudo groupmod -n grouptest group2
sudo groupdel grouptest
