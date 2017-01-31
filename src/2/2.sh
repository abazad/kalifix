#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y ccd2iso
echo "*************************************************"
echo "*********ccd2iso installed successfully**********"
echo "***************Thank you*************************"
echo "*************************************************"
echo "\n"
echo ""
echo -n "Press [ENTER] to continue,...: "
read var_name
sh src/2/default.sh
