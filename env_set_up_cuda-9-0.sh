#!/bin/bash


# below will install cuda 9.0
CUDA_REPO_PKG="cuda-repo-ubuntu1604_9.0.176-1_amd64.deb"
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i ${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda-9-0 # need to wait...

# install cuDNN v7.0.4
CUDNN_TAR_FILE="cudnn-9.0-linux-x64-v7.tgz"
wget http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.4/${CUDNN_TAR_FILE}
tar -xzvf ${CUDNN_TAR_FILE}
CUDA_FOLDER="cuda-9.0"
sudo cp -P cuda/include/cudnn.h /usr/local/${CUDA_FOLDER}/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/${CUDA_FOLDER}/lib64/
sudo chmod a+r /usr/local/${CUDA_FOLDER}/lib64/libcudnn*

# set environment variables
export PATH=/usr/local/${CUDA_FOLDER}/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/${CUDA_FOLDER}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_VISIBLE_DEVICES=0
sudo ldconfig


# install tensorflow 1.6.0
sudo apt-get -y update
sudo apt-get install python-dev python-pip
sudo apt-get install libcupti-dev
TF_WHL_FILE="tensorflow_gpu-1.6.0-cp27-cp27mu-manylinux1_x86_64.whl"
wget https://pypi.python.org/packages/0f/a2/38929ec9677cb0009837b77674388ab4a35ad81573f3289b21963eda0f9a/${TF_WHL_FILE}#md5=6aeae66cb813e26086dd460eede672bd
sudo pip install ${TF_WHL_FILE}
python -c 'import tensorflow as tf; print(tf.__version__)' 
