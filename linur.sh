#!/bin/bash
clear
banner=`cat banner.txt`
echo "$banner"
echo -e "\n"
main=`cat src/menu.txt`
echo "$main"
echo -e "\n"
echo "============================================================================================"
echo -e "Enter Value: \c"
read val
if [ $val ];
then
	sh src/$val/default.sh
fi
