#!/bin/bash
"""
Evironment:
Cuda-8.0 + CuDnn v6 + Tensorflow 1.4 + python2.7 on Ubuntu 16.04
"""

"""
pip/git
"""
#---pip---
#sudo apt-get install python-pip 

#---upgrade pip---
sudo pip install --upgrade pip

#---git---
sudo apt update
sudo apt install git #success

"""
IDE common used
"""
#---Jupyter Notebook---
# install Ipython:
sudo apt-get -y install ipython ipython-notebook #successful
# install Jupyter Notebook
sudo pip install --user jupyter #successful
sudo -H pip install jupyter   #successful
# below 'phoebehuang' change to your own user name
sudo chown phoebehuang:phoebehuang ~/.local/share/jupyter #successful

#---Jupyter Lab---
sudo pip install jupyterlab

"""
c/cpp
"""
#---vim---
sudo apt-get install vim
# vi main.c
# gcc main.c
# ls
# ./a.out

"""
Useful python toolkit
"""
#---numpy---
sudo pip install numpy #successful #Requirement already satisfied

#---pandas---
sudo pip install pandas  #successful

#---matplotlib---
sudo python -mpip install -U pip #successful
sudo python -mpip install -U matplotlib  #successful

#---sklearn---
sudo pip install sklearn  #successful

"""
Deep Learning Framework
  For caffe and caffe2, see: other_toolkit_1.sh
  For tensorflow, see: env_set_up_cuda-9-0.sh or env_set_up_cuda.sh
"""
#---keras---
sudo pip install keras    #successful
sudo pip install h5py     #successful

#---pytorch---
sudo pip install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp27-cp27mu-linux_x86_64.whl 
sudo pip install torchvision 

"""
Deep Learning Framework Converter
  For caffe and caffe2, see: other_toolkit_1.sh
  For tensorflow, see: env_set_up_cuda-9-0.sh or env_set_up_cuda.sh
"""

#---onnx---
sudo apt-get install protobuf-compiler libprotoc-dev
sudo pip install onnx
python -c "import onnx"
#---onnx-tf---
# ref: < https://github.com/onnx/tutorials/blob/master/tutorials/OnnxTensorflowImport.ipynb >  #fail
sudo pip install onnx-tf
#---pydot and graphviz---
sudo apt install python-pydot python-pydot-ng graphviz # python-pydot-ng isn't in the 14.04 repos

"""
GUI tool
"""
#---tk---
sudo apt-get install python-tk

#---npm---
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:gias-kay-lee/npm
sudo apt-get update
sudo apt-get install npm

#---node.js---
sudo apt-get update
sudo apt-get install nodejs
#sudo apt-get install npm
# in a certain folder, run "npm install" for the first time
# in that folder, run "npm run serve-watch" to show the webpage
sudo apt install nodejs-legacy

"""
markdown editor
"""
#---typora---
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE # optional, but recommended
sudo add-apt-repository 'deb https://typora.io ./linux/' # add Typora's repository
sudo apt-get update
sudo apt-get install typora

"""
other IDE
"""
#--spyder----
#sudo pip install spyder #fail
#   Could not find a version that satisfies the requirement pyqt5 (from spyder) (from versions: )
# No matching distribution found for pyqt5 (from spyder)
#sudo -H  pip install pyqt5 #fail
#  Could not find a version that satisfies the requirement pyqt5 (from versions: )
#No matching distribution found for pyqt5
#You are using pip version 8.1.1, however version 9.0.1 is available.
#You should consider upgrading via the 'pip install --upgrade pip' command.
#pip install --upgrade pip #fail
#Requirement already up-to-date: pip in ./.local/lib/python2.7/site-packages

#---VS Code---
#https://oranwind.org/vs-code-ubuntu-16/
#cd <where VS Code filename.deb is >
#sudo dpkg -i <VS Code file name>.deb
#sudo "python" -m pip install -U pylint #success

"""
Image Processing
"""
#---pillow---
sudo pip install Pillow  #successful #Requirement already satisfied

#---opencv2--- 
# ref: < http://leoybkim.com/wiki/installing-opencv-2.4.13-on-ubunto-16.04/ > ... FAIL

"""
RL
"""
#---gym---
git clone https://github.com/openai/gym.git
cd gym
sudo pip install -e .

"""
NLP
"""
#---gensim---
sudo easy_install -U gensim #success

#---nltk---
sudo pip install -U nltk

#---beautifulsoup4---
sudo easy_install beautifulsoup4 #success

"""
language of system setting
"""
#---新酷音---
sudo add-apt-repository ppa:fcitx-team/nightly
sudo apt-get update
sudo apt-get install fcitx-chewing
# Text Entry Settings -> Add 'chewing(fcitx)' -> log out -> log in'

#---chinese---
sudo apt-get install hime #success

"""
other
"""
#---python3---
#sudo apt-get update
#sudo apt-get -y upgrade
#python3 -V
#sudo apt-get install -y python3-pip
#sudo apt-get install build-essential libssl-dev libffi-dev python-dev

#---other---
#sudo apt install yum   # has been uninstall
#sudo pip install imgaug #success



