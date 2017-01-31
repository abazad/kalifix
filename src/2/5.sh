#!/bin/bash
pwdir=`pwd`
sh src/1/update.sh
cd /opt/
apt-get install -y ruby openssl
apt-get install -y zlib1g-dev libssl-dev
sudo apt-get install -y curl
sudo apt-get install -y libcurl3
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
chmod 755 msfinstall && \
./msfinstall
echo "*************************************************"
echo "**metasploit-framework installed successfully****"
echo "***************Thank you*************************"
echo "*************************************************"
echo "\n"
echo ""
echo -n "Press [ENTER] to continue,...: "
cd $pwdir
read var_name
sh src/2/default.sh
