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
2. Wait for a while (depending on internet speed) the blockchain is being bootstrapped, this process will take 1-2 hours NOT DAYS
3. Once you receive "SYNCHRONIZED OK" on the bytecoind open another console windows (ssh or whatever) on your machine
4. Create your new wallet, copy and paste the following command. Replace WALLETNAME with your desired wallet filename, and WALLETPASS with your desired wallet password
```
wget -O - https://raw.githubusercontent.com/cryptozona/bytecoinBCN/master/wallet/bytecoin-simplewallet-create.sh | bash -s WALLETNAME WALLETPASS
```
5. Your new wallet has been created in ~/wallet
6. Wait for it to sync with bytecoind (a few minutes)
7. Simple commands to know: address, balance, save, exit

Anytime you want to access the wallet, open 2 console windows. start up bytecoind and wait for it to sync (if you open frequently or keep running it will always be in sync) then run simple wallet

```
bytecoind
```
wait for "SYNCHRONIZED OK"
then in second console start simplewallet, your wallet file is ~/wallet/walletname you created
```
simplewallet
```

