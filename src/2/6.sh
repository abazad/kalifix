#!/bin/bash
pwdir=`pwd`
sh src/1/update.sh
cd /opt/
sudo git clone https://github.com/trustedsec/social-engineer-toolkit.git
cd social-engineer-toolkit
./setup.py install
echo "*************************************************"
echo "********SEToolkit installed successfully*********"
echo "***************Thank you*************************"
echo "*************************************************"
echo "\n"
echo ""
echo -n "Press [ENTER] to continue,...: "
cd $pwdir
read var_name
sh src/2/default.sh
