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
./ethminer -G -P stratum://39b1gAwHoBoB8S3RUw88C2abPENKvdYR5o.narzo:x@daggerhashimoto.usa.nicehash.com:3353
sleep 3
done
sleep 999

     echo COUNTER $COUNTER
     let COUNTER-=1
done
