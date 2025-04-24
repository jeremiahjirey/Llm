#!/bin/bash -xe
sudo apt update
sudo apt install nfs-common ansible -y
ansible --version
sudo mkdir /mnt/share
sudo chmod -R 777 /mnt/share
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-05cacde14859cd25c.efs.us-east-1.amazonaws.com:/ /mnt/share
