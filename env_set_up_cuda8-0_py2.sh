#!/bin/bash

# below will move this file to correct floder, see run_this.sh
# sudo cp -P  env_set_up.sh  /usr/local/bin
# cd /usr/local/bin
# sh env_set_up.sh

# install nvidia driver
# not sure it's really useful, but still do it. 
# Basiclly, driver will be replaced by newer version after installing cuda.  
sudo apt-get update
#sudo apt purge nvidia-*
sudo apt install nvidia-384
#sudo apt install nvidia-375

# install CUDA v8.0
# instructions from https://developer.nvidia.com/cuda-downloads (linux -> x86_64 -> Ubuntu -> 16.04 -> deb (network))
CUDA_REPO_PKG="cuda-repo-ubuntu1604_8.0.61-1_amd64.deb"
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i ${CUDA_REPO_PKG}
sudo apt-get update
#sudo apt-get -y install cuda # if not append version, this command will install the newest cuda, which is not cuda-8-0 
sudo apt-get install cuda-8-0 #below will install cuda 8.0

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
# you can use 'echo $PATH' and 'echo $LD_LIBRARY_PATH' to check the current values of environment variables
# before modify environment variables, check cuda-8.0 is installed sucessfully 

export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}

# $ echo $PATH
# /usr/local/cuda-8.0/bin:/home/phoebehuang/bin:/home/phoebehuang/.local/bin:/usr/local/sbin:/usr/local/bin:
# /usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# below will let my LD_LIBRARY_PATH = '/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:}', which is wrong, so I modify it
#export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# $ echo $LD_LIBRARY_PATH
# /usr/local/cuda-8.0/lib64

export CUDA_VISIBLE_DEVICES=0
sudo ldconfig

# install tensorflow
sudo apt-get -y update
sudo apt-get install python-dev python-pip
sudo apt-get install libcupti-dev
#sudo pip install tensorflow-gpu   # default install tensorflow 1.5, which doesn't support cuda < 9.0 , 2018/2/6
TF_WHL_FILE="tensorflow_gpu-1.4.1-cp27-cp27mu-manylinux1_x86_64.whl"
wget https://pypi.python.org/packages/cf/95/d7ba49e73125cf0f3f8d4dcbb05a5b3ebb25205b0af7ba844f1a1300f79a/${TF_WHL_FILE}
sudo pip install ${TF_WHL_FILE}

# use below command to check tensorflow is installed sucessfully 
python -c 'import tensorflow as tf; print(tf.__version__)' 

