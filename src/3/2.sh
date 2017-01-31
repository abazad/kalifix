#!/bin/bash
clear
echo "
===============================================================
***This will fix the below errors***
===============================================================

E: Unable to locate package linux-headers-4.6.0-kali1-amd64
E: Couldn't find any package by glob 'linux-headers-4.6.0-kali1-amd64'
E: Couldn't find any package by regex 'linux-headers-4.6.0-kali1-amd64'

===============================================================

"
echo -e "Do you want to continue... [Y/N] \c"
read query
if [ "$query" = "Y" -o "$query" = "y" ];
then
	stri="deb http://mirror.nus.edu.sg/kali/kali kali-rolling main non-free contrib"
	src=`sudo cat /etc/apt/sources.list | grep -Fx "$stri"`
	if [ "$src" ];
	then
		sudo apt-get update -y
		sudo apt-get install -y dkms build-essential linux-headers-$(uname -r)
		sudo apt-get upgrade -y
		sudo apt-get dist-upgrade -y
	else
		sudo echo "deb http://mirror.nus.edu.sg/kali/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
		sudo apt-get update -y
		sudo apt-get install -y dkms build-essential linux-headers-$(uname -r)
		sudo apt-get upgrade -y
		sudo apt-get dist-upgrade -y
	fi
fi
echo "*************************************************"
echo "**********Bug Fixed successfully*****************"
echo "***************Thank you*************************"
echo "*************************************************"
echo "\n"
sh src/3/default.sh

