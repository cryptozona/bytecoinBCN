# Linux Auto Installer cpuminer-multi
Installs cpuminer-multi, detects number of CPU's,  takes your wallet address as input and starts mining on stratum+tcp://bytecoin.party:3333

## System Requirements:
Debian based Distro
Tested working on Ubuntu 16.04

## Installation Instructions
from console run the following command, replace BCNWALLETADDRESS with a valid Wallet Address.
```
wget -O - https://raw.githubusercontent.com/cryptozona/bytecoinBCN/master/miners/cpuminer-installer.sh | bash -s BCNWALLETADDRESS
```

Once you are mining, you can goto http://bytecoin.party and enter your wallet address to track your mining stats.

If you are a windows user, you can run this in a virtual machine, and assign the number of CPU's you want to mine with (this script uses MAX CPU).  Suggested OS: ubuntu 16.04 MINIMAL install.

## Donate
BCN: 22t7Vi6pxE5Gs81XpqDmNMc19CCzZ8EEQdoTBZTCHCfYVNTQKJoaaaWWcyafop5bRSUnRs8xUbHeNbReAnHELkRiUEc1yoF

