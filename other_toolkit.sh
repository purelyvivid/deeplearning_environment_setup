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

#---keras---
sudo pip install keras    #successful

#---sklearn---
sudo pip install sklearn  #successful

#---pandas---
sudo pip install pandas  #successful

#---matplotlib---
python -mpip install -U pip #successful
sudo python -mpip install -U matplotlib  #successful

#---git---
#sudo pip install git #error! 
# Could not find a version that satisfies the requirement git (from versions: ) No matching distribution found for git
sudo apt-get install git-all
"""
設定 runit (2.1.2-3ubuntu1) ...
start: Unable to connect to Upstart: Failed to connect to socket /com/ubuntu/upstart: 連線被拒絕
dpkg: error processing package runit (--configure):
 子程序 已安裝的 post-installation script 傳回了錯誤退出狀態 1
dpkg: 因相依問題，無法設定 git-daemon-run：
 git-daemon-run 相依於 runit﹔然而：
  runit 套件尚未設定。

dpkg: error processing package git-daemon-run (--configure):
 相依問題 - 保留未設定
設定 libcommon-sense-perl (3.74-1build1) ...
No apport report written because the error message indicates its a followup error from a previous failure.

設定 tla-doc (1.3.5+dfsg1-2) ...
Processing triggers for libc-bin (2.23-0ubuntu9) ...
Processing triggers for systemd (229-4ubuntu19) ...
Processing triggers for ureadahead (0.100.0-19) ...
Processing triggers for ufw (0.35-0ubuntu2) ...
處理時發生錯誤：
 runit
 git-daemon-run
E: Sub-process /usr/bin/dpkg returned an error code (1)
"""


#---typora---
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt-get update
# install typora
sudo apt-get install typora

#--spyder----
sudo pip install spyder
#   Could not find a version that satisfies the requirement pyqt5 (from spyder) (from versions: )
# No matching distribution found for pyqt5 (from spyder)
sudo -H  pip install pyqt5
#  Could not find a version that satisfies the requirement pyqt5 (from versions: )
#No matching distribution found for pyqt5
#You are using pip version 8.1.1, however version 9.0.1 is available.
#You should consider upgrading via the 'pip install --upgrade pip' command.
pip install --upgrade pip
#Requirement already up-to-date: pip in ./.local/lib/python2.7/site-packages

#---VS Code---
#https://oranwind.org/vs-code-ubuntu-16/
cd <VS Code 安裝檔所在目錄>
sudo dpkg -i <VS Code 安裝檔>.deb
sudo "python" -m pip install -U pylint

#---opencv2---
#https://gist.github.com/arthurbeggs/06df46af94af7f261513934e56103b30

#---other---
sudo apt install yum
sudo pip install imgaug


