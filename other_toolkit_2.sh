"""
Evironment:
cuda 9.0 + cuDNN v7.0.4 + tensorflow 1.6.0 + python2.7 on Ubuntu 16.04
"""

# curl
sudo apt install curl

# yarn
# https://yarnpkg.com/en/docs/install#debian-stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
# install
# sudo apt-get update && sudo apt-get install yarn
#If using nvm you can avoid the node installation by doing:
sudo apt-get install --no-install-recommends yarn
# test
yarn --version
# 1.6.0




