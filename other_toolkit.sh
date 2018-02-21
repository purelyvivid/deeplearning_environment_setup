#!/bin/bash

#---upgrade pip---
sudo pip install --upgrade pip


#---Jupyter Notebook---
# install Ipython:
sudo apt-get -y install ipython ipython-notebook #successful

# install Jupyter Notebook
sudo pip install --user jupyter #successful

sudo -H pip install jupyter   #successful

# below 'phoebehuang' change to your own user name
sudo chown phoebehuang:phoebehuang ~/.local/share/jupyter #successful

# below are not nessesary!!
#sudo pip install --upgrade setuptools
#sudo pip install ez_setup
#sudo pip install unroll   # has error!!
#sudo easy_install -U setuptools

#---keras---
sudo pip install keras    #successful
sudo pip install h5py  #successful

#---sklearn---
sudo pip install sklearn  #successful

#---pandas---
sudo pip install pandas  #successful

#---matplotlib---
python -mpip install -U pip #successful
sudo python -mpip install -U matplotlib  #successful

#---pytorch---
sudo pip install http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp27-cp27mu-linux_x86_64.whl 
sudo pip install torchvision 

#---git---
#sudo pip install git #error! 
# Could not find a version that satisfies the requirement git (from versions: ) No matching distribution found for git
#sudo apt-get install git-all #runit fail
#sudo apt-get purge runit
#sudo apt-get purge git-all
#sudo apt-get purge git
#sudo apt-get autoremove
sudo apt update
sudo apt install git #success

#---typora---
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE # optional, but recommended
sudo add-apt-repository 'deb https://typora.io ./linux/' # add Typora's repository
sudo apt-get update
sudo apt-get install typora

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
sudo apt-get install npm
# in a certain folder, run "npm install" for the first time
# in that folder, run "npm run serve-watch" to show the webpage
sudo apt install nodejs-legacy

#---gym---
git clone https://github.com/openai/gym.git
cd gym
sudo pip install -e .

#---pillow---
#sudo pip install Pillow #Requirement already satisfied

#---opencv2---
#https://gist.github.com/arthurbeggs/06df46af94af7f261513934e56103b30 #success

#---chinese---
sudo apt-get install hime #success

#---python3---
#sudo apt-get update
#sudo apt-get -y upgrade
#python3 -V
#sudo apt-get install -y python3-pip
#sudo apt-get install build-essential libssl-dev libffi-dev python-dev

#---gensim---
sudo easy_install -U gensim #success

#---beautifulsoup4---
sudo easy_install beautifulsoup4 #success

#---other---
#sudo apt install yum   # has been uninstall
#sudo pip install imgaug #success



