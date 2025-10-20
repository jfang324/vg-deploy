#!/bin/bash

# update and upgrade packages
sudo apt update && sudo apt upgrade -y

# clean up
sudo apt autoremove -y && sudo apt autoclean -y

# install docker
sudo apt install docker.io -y 

# install docker-compose
sudo apt install docker-compose -y
