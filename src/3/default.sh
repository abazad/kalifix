#!/bin/bash
clear
banner=`cat banner.txt`
echo "$banner"
echo "\n"
main=`cat src/3/menu.txt`
echo "$main"
count=`wc -l src/3/menu.txt | awk '{print $1}'`
echo "============================================================================================"
echo "Bug Fixes Found : $((count - 1))				                           << b. Back"
echo "============================================================================================"
echo "Enter Value: \c"
read val
if [ $val ];
then
	if [ "$val" = "b" -o "$val" = "B" ];
	then
		clear
		sh linur.sh
	else
	sh src/3/$val.sh
	fi
fi

