#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update && sudo apt-get install wget vim -y
wget -q -O- 'https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc' | sudo apt-key add -
echo deb http://ceph.com/debian/ $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/ceph.list
sudo apt-get update && sudo apt-get install ceph-common -y
sudo mkdir /etc/ceph
sudo cp /vagrant/setup/ceph.conf /etc/ceph/ceph.conf
sudo cp /vagrant/setup/keyring /etc/ceph/keyring
grep -q -F '192.168.251.100 ceph' /etc/hosts || echo '192.168.251.100 ceph' >> /etc/hosts
grep -q -F 'rbd' /etc/hosts || echo 'rbd' >> /etc/modules

