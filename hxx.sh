#!/bin/bash
output() {
        printf "\E[0;33;40m"
        echo $1
        printf "\E[0m"
}
output "";
output "Upgrade OS"
sudo apt-get update
output "Upgrade OS - Done!"
output "Install CPUminer"
sudo apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git screen
cd /root/
git clone https://github.com/JayDDee/cpuminer-opt
cd cpuminer-opt
./build.sh
cd /root/
cp cpuminer ../
