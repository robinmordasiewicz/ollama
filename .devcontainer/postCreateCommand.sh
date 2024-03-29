#!/bin/bash
#

#if [ -f /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list ]; then
#  sudo rm /etc/apt/sources.list.d/cuda-ubuntu2004-x86_64.list
#fi
sudo apt update
sudo apt-get -y upgrade
sudo apt-get -y install tensorrt cudnn cudnn-cuda-12
sudo apt -y autoremove
