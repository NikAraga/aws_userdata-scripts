#!/bin/bash

### Installing Docker on RedHat7 and Centos7

sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce

## If any exception arises wrt. to container-selinux
## Install latest container-selinux from http://mirror.centos.org/centos/7/extras/x86_64/Packages/
## an example command is referenced below
## sudo yum install -y http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.74-1.el7.noarch.rpm

sudo yum install docker-ce
sudo systemctl start docker.service
sudo systemctl enable docker.service

## and play with docker


### Installing docker-compose

## Method-1
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

## Method-2
yum install -y net-tools git
yum -y install  https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install epel-release python python-pip -y
sudo pip install docker-compose
docker-compose version

## If above command didn't get you any version try upgrading python and try again
## sudo yum upgrade python*
## docker-compose version
