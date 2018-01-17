# Linux Bytecoin wallet installer and instructions
## Assist users get a basic wallet working

There appear to be a large volume of people having issues with getting a wallet synced and working. In order to assist people this script will install and bootstrap the blockchain and start the sync. Once synced you can run simlewallet commands to create your wallet and get BCN in it. 

Hopefully you are already running a Linux machine. If not I would suggest installing any debian derivative on your system in a virtual machine. This wallet setup if followed properly should be simple and foolproof to get running and use. It will require interaction via command line. GUI might be nice, but getting your BCN is nicer.

## Instructions
This assumes you know how to secure your machine if you are running on the public internet

1. From console install and bootstrap bytecoind by running the following command
```
wget -O - https://raw.githubusercontent.com/cryptozona/bytecoinBCN/master/wallet/bytecoin-simplewallet-install.sh | bash
```
