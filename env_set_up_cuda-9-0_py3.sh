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

# Reset default python version 3.5
sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3.5 /usr/bin/python
PATH=/usr/bin:$PATH
python --version #Python 3.5.2


# Before install tensorflow 
sudo apt-get -y update
sudo apt-get install python-dev python-pip
sudo apt-get install python3-dev python3-pip
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
sudo pip3 install -U --user pip six numpy wheel mock  
sudo pip3 install -U --user keras_applications==1.0.5 --no-deps
sudo pip3 install -U --user keras_preprocessing==1.0.3 --no-deps
sudo apt-get install libcupti-dev

# Install tensorflow (method-1)
sudo pip3 install tensorflow-gpu
"""
>Collecting tensorflow-gpu
>  Downloading https://files.pythonhosted.org/packages/84/d8/00a450ad627c7c5e28ada8a179e6a43854089ea5b30485f896efa5ed5814/tensorflow_gpu-1.11.0-cp35-cp35m-manylinux1_x86_64.whl (258.8MB)
...
>Successfully installed absl-py-0.6.0 astor-0.7.1 gast-0.2.0 grpcio-1.15.0 h5py-2.8.0 keras-2.2.4 markdown-3.0.1 protobuf-3.6.1 pyyaml-3.13 scipy-1.1.0 tensorboard-1.11.0 tensorflow-gpu-1.11.0 termcolor-1.1.0 werkzeug-0.14.1

"""
python -c 'import tensorflow as tf; print(tf.__version__)'
"""
>1.11.0
"""

# Install tensorflow (method-2)

TF_WHL_FILE="tensorflow_gpu-1.11.0-cp35-cp35m-manylinux1_x86_64.whl"
wget https://files.pythonhosted.org/packages/84/d8/00a450ad627c7c5e28ada8a179e6a43854089ea5b30485f896efa5ed5814/${TF_WHL_FILE}
sudo pip3 install ${TF_WHL_FILE}
"""
>Collecting tensorflow-gpu
>  Downloading https://files.pythonhosted.org/packages/84/d8/00a450ad627c7c5e28ada8a179e6a43854089ea5b30485f896efa5ed5814/tensorflow_gpu-1.11.0-cp35-cp35m-manylinux1_x86_64.whl (258.8MB)
...
>Successfully installed absl-py-0.6.0 astor-0.7.1 gast-0.2.0 grpcio-1.15.0 h5py-2.8.0 keras-2.2.4 markdown-3.0.1 protobuf-3.6.1 pyyaml-3.13 scipy-1.1.0 tensorboard-1.11.0 tensorflow-gpu-1.11.0 termcolor-1.1.0 werkzeug-0.14.1

"""
python -c 'import tensorflow as tf; print(tf.__version__)'





