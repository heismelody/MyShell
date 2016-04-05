#!/bin/bash
#This scripts print the sentences containing "*,^,+,&,`,$" by different ways:
#including : \ and ''
#Emain:826556077@qq.com

echo "5*5=25"
echo 5\*5=25
echo 5'*'5=25

echo 5+5=10
echo 5\+5=10
echo 5'+'5=10

echo 5^2=25
echo 5\^2=25
echo 5'^'2=25

echo "1&1=1"
echo 1'&'1=1
echo 1\&1=1

echo "\`"
echo \`
echo '`'

echo "\$"
echo '$'
echo \$
