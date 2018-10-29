#!/bin/bash
"""
Chimei Formal Machine
Evironment:
Cuda-9.0 + CuDnn v7 + Tensorflow 1.11.0 + python3.5 on Ubuntu 16.04.4
"""

"""
pip/git
"""
#---pip---
#sudo apt-get install python3-pip 

#---upgrade pip---
sudo pip install --upgrade pip

#---git---
sudo apt update
sudo apt install git #success

"""
IDE common used
"""
#---Jupyter Notebook---
# https://www.digitalocean.com/community/tutorials/how-to-set-up-a-jupyter-notebook-to-run-ipython-on-ubuntu-16-04

# install Ipython:
sudo apt-get -y install ipython ipython-notebook
# install Jupyter Notebook
sudo -H pip install jupyter

#---Jupyter Lab---
sudo pip3 install jupyterlab

"""
Useful python toolkit
"""
#---numpy---
sudo pip3 install numpy #successful #Requirement already satisfied

#---pandas---
sudo pip3 install pandas  #successful

#---matplotlib---
#sudo python -mpip install -U pip #successful
#sudo python -mpip install -U matplotlib  #successful
sudo pip3 install matplotlib

#---sklearn---
sudo pip3 install sklearn  #successful

"""
Deep Learning Framework
  For caffe and caffe2, see: other_toolkit_1.sh
  For tensorflow, see: env_set_up_cuda-9-0.sh or env_set_up_cuda.sh
"""
#---keras---
sudo pip3 install keras    #successful
sudo pip3 install h5py     #successful

#---pytorch---
# v0.4.1
sudo pip3 install torch torchvision

"""
markdown editor
"""
#---typora---
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install typora

"""
Image Processing
"""
#---pillow---
sudo pip3 install Pillow  #successful #Requirement already satisfied


"""
language of system setting
"""
#---新酷音---
sudo add-apt-repository ppa:fcitx-team/nightly
sudo apt-get update
sudo apt-get install fcitx-chewing
# System Setting -> Language Support 
#                     -> Keyboard input method system -> change to 'fcitx'
#                     -> install/Remove Language -> change to 'Chiense(Traditional)'
#                     -> click 'aply System-Wide'
# -> log out -> log in'
# Text Entry Settings -> Add 'chewing(fcitx)' -> log out -> log in'



"""
other
"""

