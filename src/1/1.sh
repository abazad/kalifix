#!/bin/bash
clear
stri="deb http://mirror.nus.edu.sg/kali/kali kali-rolling main non-free contrib"
src=`sudo cat /etc/apt/sources.list | grep -Fx "$stri"`
if [ "$src" ];
then
	sudo apt-get autoremove -y
	sudo apt-get update -y
	sudo apt-get install -y dkms build-essential linux-headers-$(uname -r)
	sudo apt-get upgrade -y
	sudo apt-get dist-upgrade -y
else
	sudo echo "deb http://mirror.nus.edu.sg/kali/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
	sudo apt-get autoremove -y
	sudo apt-get update -y
	sudo apt-get install -y dkms build-essential linux-headers-$(uname -r)
	sudo apt-get upgrade -y
	sudo apt-get dist-upgrade -y
fi
echo "*************************************************"
echo "****Your System is successfully updated**********"
echo "***************Thank you*************************"
echo "*************************************************"
echo "\n"
sh linur.sh
