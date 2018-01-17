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


