#!/bin/bash


# install Ipython:
sudo apt-get -y install ipython ipython-notebook

# install Jupyter Notebook
sudo pip install --user jupyter #successful!!

# below will has some issue: Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-NG6zOV/unroll/
#sudo -H pip install jupyter
# below are not nessesary!!
#sudo pip install --upgrade pip
#sudo pip install --upgrade setuptools
#sudo pip install ez_setup
#sudo pip install unroll   # has error!!
#sudo easy_install -U setuptools


