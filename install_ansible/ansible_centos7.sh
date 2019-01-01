#!/bin/bash

## Installing required pre-requisites
yum install -y net-tools git
yum -y install  https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install epel-release python python-pip -y
pip install --upgrade pip 

## Creating ansible repo in /etc/yum.repos.d
cat <<EOT >> /etc/yum.repos.d/ansible.repo
[ansible]
name = ansible
baseurl = https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/
enabled = 1
gpgcheck = 0
EOT

## Installing Ansible 
sudo yum install ansible -y