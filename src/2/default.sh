#!/bin/bash
clear
banner=`cat banner.txt`
echo "$banner"
echo "\n"
main=`cat src/2/menu.txt`
count=`wc -l src/2/menu.txt | awk '{print $1}'`
echo "$main"
echo "============================================================================================"
echo "Total Installations Found : $((count - 1))                                            << b. Back"
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
	sh src/2/$val.sh
	fi
fi

