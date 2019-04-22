

# OS: ubuntu16.04
# x86_64 / amd64

# Date: 2019/04/22

# Step1. 安裝 Nvidia 驅動程式 
# Reference: https://ithelp.ithome.com.tw/articles/10191673
nvidia-smi

# Step2. Docker 安裝
# Reference: https://medium.com/@minyuantseng/%E4%BD%BF%E7%94%A8docker%E4%BE%86%E5%BB%BA%E7%BD%AEdeep-learning%E7%92%B0%E5%A2%83-171d35632840

#更新apt的package目錄 
sudo apt-get update
#安裝相關package
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
#加入Docker官方金鑰
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#確認金鑰是否正確
#Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88
#加入stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" 
#設定完 repository後，即可開始下載Docker
sudo apt-get update
sudo apt-get install docker-ce
#執行測試image來確認安裝成功
#sudo docker run hello-world


# Step3. nvidia-docker 安裝
#在開始安裝前，請先確認已安裝nvidia driver，可以用以下指令來測試
nvidia-smi
#加入金鑰
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  sudo apt-key add -
#加入 repository
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-docker.list
#更新package list
sudo apt-get update
#安裝 nvidia-docker2
sudo apt-get install -y nvidia-docker2
#重整docker設定
sudo pkill -SIGHUP dockerd
#用CUDA image來作測試
sudo docker run --runtime=nvidia --rm nvidia/cuda:9.0-base nvidia-smi


# Step4. Deepo 安裝

# https://github.com/ufoym/deepo

"""
# Pull All-in-one image
sudo docker pull ufoym/deepo
# 測試這些 Images
sudo nvidia-docker run --rm ufoym/deepo nvidia-smi
# 開啟一個Container(虛擬環境)
sudo nvidia-docker run -it ufoym/deepo bash
"""
"""
# Pull one image
sudo docker pull ufoym/deepo:pytorch
# 測試這些 Images
sudo nvidia-docker run --rm ufoym/deepo:pytorch nvidia-smi
# 開啟一個Container(虛擬環境)
sudo nvidia-docker run -it ufoym/deepo bash


"""


