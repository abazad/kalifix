#!/bin/bash
clear
banner=`cat banner.txt`
echo "$banner"
echo "\n"
echo "Paste Your Bug Here: \c"
read sbug
main=`cat src/3/menu.txt | grep "$sbug"`
if [ "$main" ];
then
	echo "$main"
else
	clear
	echo "$banner"
	echo ""
	echo ""
	echo "		*******************************"
	echo "		****Sorry Fix Not Found!!!*****"
	echo "		*******************************"
	echo "\n"
	echo "================================================================================"
	echo " s. Search again			 b. Back			e. Exit"
	echo "================================================================================"
	echo "Please Enter The Value: \c"
	read qpp
	if [ "$qpp" = "s" -o "$qpp" = "S" ];
	then
		clear
		sh src/3/0.sh
	elif [ "$qpp" = "b" -o "$qpp" = "B" ];
	then
		clear
		sh src/3/default.sh
	elif [ "$qpp" = "e" -o "$qpp" = "E" ];
	then	
		exit;
	fi
fi


