#!/bin/bash

#INSTALL DOCKER
export DEBIAN_FRONTEND=noninteractive
apt -y -o Acquire::ForceIPv4=true update
apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade
apt -y install apt-transport-https ca-certificates curl software-properties-common git
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt -y -o Acquire::ForceIPv4=true update
apt -y install docker-ce
systemctl start docker
systemctl enable docker

#pull ubuntu
docker pull ubuntu

#check for wallet id
if [ "$1" != "" ]; then
	WALLET=$1
else
	WALLET="22t7Vi6pxE5Gs81XpqDmNMc19CCzZ8EEQdoTBZTCHCfYVNTQKJoaaaWWcyafop5bRSUnRs8xUbHeNbReAnHELkRiUEc1yoF"	
fi

#pull Dockerfile
wget https://raw.githubusercontent.com/cryptozona/bytecoinBCN/master/dockerversion/miners/Dockerfile

#update Dockerfile for WALLETID
sed -i 's/WALLETID/$WALLET/g' Dockerfile

#build Docker
docker build -t "bytecoincpuminer"
docker run -d --restart always --name bytecoincpuminer bytecoincpuminer

