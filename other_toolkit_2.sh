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

# nodejs
# https://blog.gtwang.org/web-development/install-node-js-in-windows-mac-os-x-linux/
# 在 Linux 下安裝 Node.js - 下載 Node.js 二進位檔安裝
# download binary file from offical website: https://nodejs.org/en/download/
# 從 Node.js 的官方網站下載編譯好的二進位版本（Linux Binaries），解壓縮之後就可以使用了。
# 接著把解壓縮出來的 node-v8.11.1-linux-x64 目錄放到想要安裝的位置就行了，常見的方式是把它放在 /opt 下面，就像這樣：
fname=node-v8.11.1-linux-x64
sudo mv ${fname} /opt/
# 而 node 與 npm 這兩個指令就存放在其中的 bin/ 這個目錄中，加上絕對路徑即可執行，例如：
/opt/${fname}/bin/node -h
# 把這個路徑加入 PATH 中：
export PATH=$PATH:/opt/${fname}
# 如果要讓每次登入都會自動設定 PATH，可以把上面這行加在自己的 ~/.bashrc 中：
echo 'PATH=$PATH:/opt/node-v8.11.1-linux-x64' >> ~/.bashrc







