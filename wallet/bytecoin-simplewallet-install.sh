#!/bin/bash

sudo apt-get -y update
cd ~
wget https://bytecoin.org/storage/wallets/bytecoin_reference_client/bytecoin-2.1.2-linux.tar.gz
tar -xzvpf bytecoin-2.1.2-linux.tar.gz
cd bytecoin-2.1.2-linux/
mkdir ~/.bytecoin
cd ~/.bytecoin

DATE=$(date +%Y-%m-%d)
DIRNAME="blockchain_"$DATE
wget https://blockchain.bytecoin.org/$DIRNAME/blocks.bin
wget https://blockchain.bytecoin.org/$DIRNAME/blockindexes.bin

cd ~/bytecoin-2.1.2-linux/
sudo cp bytecoind /usr/local/bin/
sudo cp simplewallet /usr/local/bin

echo "***"
echo "***"
echo "bytecoind is about to start and begin importing the blockchain, and will finish it off with a sync"
echo "once you see \"SYNCHRONIZED OK\" (likely in green as an INFO alert) you may start simplewallet"
echo "***"
echo "***"

sleep 5

sudo bytecoind
