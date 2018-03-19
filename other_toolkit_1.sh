# upgrade pip
pip install --upgrade pip

#  install Caffe2
# ref: https://caffe2.ai/docs/getting-started.html?platform=ubuntu&configuration=compile
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
      build-essential \
      cmake \
      git \
      libgoogle-glog-dev \
      libgtest-dev \
      libiomp-dev \
      libleveldb-dev \
      liblmdb-dev \
      libopencv-dev \
      libopenmpi-dev \
      libsnappy-dev \
      libprotobuf-dev \
      openmpi-bin \
      openmpi-doc \
      protobuf-compiler \
      python-dev \
      python-pip                          
sudo pip install \
      future \
      numpy \
      protobuf
sudo apt-get install -y --no-install-recommends libgflags-dev # for Ubuntu 16.04
git clone --recursive https://github.com/caffe2/caffe2.git && cd caffe2 
mkdir build && cd build
cmake ..
sudo make install
cd ~ && python -c 'from caffe2.python import core' 2>/dev/null && echo "Success" || echo "Failure" #Test the Caffe2 Installation

#  install Caffe #TBD
# ref: http://caffe.berkeleyvision.org/install_apt.html
# CUDA 8 is required on Ubuntu 16.04.
"""
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev
sudo apt-get install libatlas-base-dev #blas
sudo apt-get install libopenblas-dev  #blas
sudo apt-get install python-dev  
sudo apt install caffe-cuda 
"""

sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev
sudo apt install caffe-cuda #fail

"""
Test:
$ python
>>> import caffe
>>> import caffe2
"""






