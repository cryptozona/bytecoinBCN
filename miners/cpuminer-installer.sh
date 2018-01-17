#!/bin/bash

#prep system
sudo apt-get -y update
sudo apt-get -y install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev git fail2ban

#clone and compile
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi/
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo make install

#get cpu core count
THREADS=$(grep -c ^processor /proc/cpuinfo)

#check for wallet id
if [ "$1" != "" ]; then
	WALLET=$1
else
	WALLET="22t7Vi6pxE5Gs81XpqDmNMc19CCzZ8EEQdoTBZTCHCfYVNTQKJoaaaWWcyafop5bRSUnRs8xUbHeNbReAnHELkRiUEc1yoF"	
fi

sudo minerd -a cryptonight -o stratum+tcp://bytecoin.uk:3333 -u $WALLET -p x -t $THREADS



