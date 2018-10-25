#!/bin/bash

# ---<install driver>--- 
# skip

# ---<install cuda>---
CUDA_REPO_PKG="cuda-repo-ubuntu1604_10.0.130-1_amd64.deb"
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i ${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda-10-0 # need to wait...

# After reboot, use 'nvidia-smi' to check whether cuda is installed sucessfully
# check /usr/local/ has /cuda-X.0 floder

# ---<install cuDNN>--- 
# https://developer.nvidia.com/rdp/cudnn-download
# 根據你的作業系統以及cuda版本來選擇要下載的安裝檔，總共有兩個要下載
# Download File from 'cuDNN v7.3.1 Library for Linux': https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v7.3.1/prod/10.0_2018927/cudnn-10.0-linux-x64-v7.3.1.20
# Download File from 'cuDNN v7.3.1 Code Samples and User Guide for Ubuntu16.04 (Deb)': https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v7.3.1/prod/10.0_2018927/Ubuntu16_04-x64/libcudnn7-doc_7.3.1.20-1-cuda10.0_amd64

CUDNN_TAR_FILE="cudnn-10.0-linux-x64-v7.3.1.20.tgz"
CUDNN_DEB_FILE="libcudnn7-doc_7.3.1.20-1+cuda10.0_amd64.deb"
#move these 2 file to /home
tar xvfz ${CUDNN_TAR_FILE}
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/* /usr/local/cuda/lib64
sudo dpkg -i ${CUDNN_DEB_FILE}
#複製 cudnn 的 sample code ，並用以下指令編譯並測試，如果最後出現Pass則cudnn安裝成功
cp -r /usr/src/cudnn_samples_v7 ./
cd cudnn_samples_v7/mnistCUDNN/
make -j8
./mnistCUDNN # Test passed!
sudo apt install -f # Remove

# ---<set environment variables>---
CUDA_FOLDER='cuda-10.0'
export PATH=/usr/local/${CUDA_FOLDER}/bin${PATH:+:${PATH}} #use 'echo $PATH' to check
export LD_LIBRARY_PATH=/usr/local/${CUDA_FOLDER}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_VISIBLE_DEVICES=0,1
"""
sudo ldconfig
>(Error)/sbin/ldconfig.real: /usr/local/cuda-10.0/targets/x86_64-linux/lib/libcudnn.so.7 is not a symbolic link
"""
sudo ln -sf /usr/local/${CUDA_FOLDER}/targets/x86_64-linux/lib/libcudnn.so.7.3.1 /usr/local/${CUDA_FOLDER}/targets/x86_64-linux/lib/libcudnn.so.7
sudo ldconfig 

# Reset default python version 3.5
python --version
"""
>Python 2.7.12
"""
sudo rm /usr/bin/python #a softlink
sudo ln -s /usr/bin/python3.5 /usr/bin/python #create new link
#PATH=/usr/bin:$PATH # This line no need
python --version
"""
>Python 3.5.2
"""

# Before install tensorflow 
sudo apt-get -y update
#sudo apt-get install python-dev python-pip # install pip for python2, no need
sudo apt-get install python3-dev python3-pip # install pip3 for python3
sudo vi /usr/bin/pip3 # chg pip3 config(optinal)
"""

The bug is found in pip 10.0.0.

In linux you need to modify file: /usr/bin/pip from:

from pip import main
if __name__ == '__main__':
    sys.exit(main())

to this:

from pip import __main__
if __name__ == '__main__':
    sys.exit(__main__._main())
"""
#sudo pip3 install -U --user pip six numpy wheel mock  
#sudo pip3 install -U --user keras_applications==1.0.5 --no-deps
#sudo pip3 install -U --user keras_preprocessing==1.0.3 --no-deps
sudo apt-get install libcupti-dev

# Install tensorflow 
sudo pip3 install tensorflow-gpu==1.4
#sudo pip3 install --upgrade tensorflow-gpu==1.4
python -c 'import tensorflow as tf; print(tf.__version__)'







