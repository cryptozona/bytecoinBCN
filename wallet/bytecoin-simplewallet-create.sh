#!/bin/bash

if [ "$1" != "" ]; then
	WALLETNAME=$1
else
	echo "NO WALLET NAME SPECIFIED"
	exit 1;
fi

if [ "$2" != "" ]; then
        WALLETPASS=$2
else    
        echo "NO WALLET PASSWORD SPECIFIED"
        exit 1;
fi

echo "Please make sure bytecoind is running and you have received \"SYNCHRONIZED OK\" (likely in green as an INFO alert)"
echo "***"
echo "***"
echo "A wallet is being created in ~/wallet"
echo "Wallet filename $WALLETNAME"
echo "Wallet password $WALLETPASS"
echo "***"
echo "***"
echo "be patient as simplewallet syncs with bytecoind, it should only take a few mintes"
echo "a few simple commands to know: address, balance, save, exit, Those are about all you need to start"
echo "for more instructions please goto https://github.com/cryptozona/bytecoinBCN/tree/master/wallet"

cd ~
mkdir wallet
cd wallet
simplewallet --generate-new-wallet $WALLETNAME --password $WALLETPASS
