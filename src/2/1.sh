#!/bin/bash
clear
stri="deb http://mirror.nus.edu.sg/kali/kali kali-rolling main non-free contrib"
src=`sudo cat /etc/apt/sources.list | grep -Fx "$stri"`
if [ "$src" ];
then
	sudo apt-get update -y
	sudo apt-get install -y dkms build-essential linux-headers-$(uname -r)
	sudo apt-get upgrade -y
	sudo apt-get dist-upgrade -y
	sudo apt-get install virtualbox
else
	sudo echo "deb http://mirror.nus.edu.sg/kali/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
	sudo apt-get update -y
	sudo apt-get install -y dkms build-essential linux-headers-$(uname -r)
	sudo apt-get upgrade -y
	sudo apt-get dist-upgrade -y
	sudo apt-get install virtualbox
fi
echo "*************************************************"
echo "******Virtualbox installed successfully**********"
echo "***************Thank you*************************"
echo "*************************************************"
echo "\n"
echo -n "Press [ENTER] to continue,...: "
read var_name
sh src/2/default.sh
