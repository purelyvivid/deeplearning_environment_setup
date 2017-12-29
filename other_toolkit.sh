#!/bin/bash


sudo pip install --upgrade pip


#---Jupyter Notebook---
# install Ipython:
sudo apt-get -y install ipython ipython-notebook #successful

# install Jupyter Notebook
sudo pip install --user jupyter #successful

# below will has some issue: Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-NG6zOV/unroll/
#sudo -H pip install jupyter  # has error!!
# below are not nessesary!!
#sudo pip install --upgrade setuptools
#sudo pip install ez_setup
#sudo pip install unroll   # has error!!
#sudo easy_install -U setuptools

#---other toolkit: keras, sklearn---
sudo pip install keras    #successful
sudo pip install sklearn  #successful

#---git---
#sudo pip install git #error! 
# Could not find a version that satisfies the requirement git (from versions: ) No matching distribution found for git


