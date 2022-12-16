#!/bin/bash

echo "set host name: (home-server)"
read host
valhost=${host:="home-server"}
hostnamectl set-hostname $valhost

echo "get packages"
sudo apt-get update && apt-get upgrade

echo "install for host config"
sudo apt-get install libnss-mdns