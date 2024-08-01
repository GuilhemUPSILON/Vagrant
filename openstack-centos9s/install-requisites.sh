#! /bin/bash

sudo systemctl disable firewalld
sudo systemctl stop firewalld
sudo systemctl disable NetworkManager
sudo systemctl stop NetworkManager
sudo systemctl enable network
sudo systemctl start network

sudo dnf config-manager --enable crb
sudo dnf install -y centos-release-openstack-caracal

sudo dnf update -y

sudo dnf install -y openstack-packstack

sudo setenforce 0

