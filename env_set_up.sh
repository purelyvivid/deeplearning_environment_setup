#!/bin/bash

# sudo cp -P  env_set_up.sh  /usr/local/bin
# cd /usr/local/bin
# sh env_set_up.sh

sudo apt-get update
#sudo apt purge nvidia-*
sudo apt install nvidia-375

# install CUDA Toolkit v8.0
# instructions from https://developer.nvidia.com/cuda-downloads (linux -> x86_64 -> Ubuntu -> 16.04 -> deb (network))
# https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb

#below will install cuda 9.1
#CUDA_REPO_PKG="cuda-repo-ubuntu1604_8.0.61-1_amd64.deb"
#wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG}
#sudo dpkg -i ${CUDA_REPO_PKG}
#sudo apt-get update
#sudo apt-get -y install cuda
sudo apt-get install cuda-8-0
# After reboot, use 'nvidia-smi' to check whether cuda is installed sucessfully
# check /usr/local/ has /cuda-8.0 floder

# install cuDNN v6.0
CUDNN_TAR_FILE="cudnn-8.0-linux-x64-v6.0.tgz"
wget http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/${CUDNN_TAR_FILE}
tar -xzvf ${CUDNN_TAR_FILE}
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-8.0/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/
sudo chmod a+r /usr/local/cuda-8.0/lib64/libcudnn*

# set environment variables
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

sudo apt-get -y update
sudo apt-get install python-dev python-pip
sudo pip install tensorflow-gpu 
