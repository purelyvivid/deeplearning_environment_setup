- ref:

http://www.52nlp.cn/%E6%B7%B1%E5%BA%A6%E5%AD%A6%E4%B9%A0%E4%B8%BB%E6%9C%BA%E7%8E%AF%E5%A2%83%E9%85%8D%E7%BD%AE-ubuntu-16-04-nvidia-gtx-1080-cuda-8

https://gist.github.com/mjdietzx/0ff77af5ae60622ce6ed8c4d9b419f45  #這個不錯, 務必參考!!

- 重灌ubuntu 16.04之後

```shell
# comfirm GPU exist
lspci -nnk |grep -i nvidia

sudo apt-get update

sudo apt purge nvidia-*

sudo apt-get install nvidia-375

#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt-get install mesa-common-dev
#sudo apt-get install freeglut3-dev
```

- download cuda

  下載cuda 8.0: https://developer.nvidia.com/cuda-80-ga2-download-archive  runfile檔

  將terminal 路徑指到runfile檔的資料夾

```shell
sudo sh cuda_8.0.61_375.26_linux.run
```

- Follow the command-line prompts

> Do you accept the previously read EULA?
> accept/decline/quit: accept
>
> Install NVIDIA Accelerated Graphics Driver for Linux-x86_64 375.26?
> (y)es/(n)o/(q)uit: n
>
> Install the CUDA 8.0 Toolkit?
> (y)es/(n)o/(q)uit: y
>
> Enter Toolkit Location
> [ default is /usr/local/cuda-8.0]: 
>
> Do you want to install a symbolic link at /usr/local/cuda?
> (y)es/(n)o/(q)uit: y
>
> Install the CUDA 9.1 Samples?
> (y)es/(n)o/(q)uit: y
>
> ...
>
> Driver:   Not Selected
> Toolkit:  Installed in /usr/local/cuda-8.0
> Samples:  Installed in /home/phoebehuang, but missing recommended libraries
>
> Please make sure that
>  -   PATH includes /usr/local/cuda-8.0/bin
>  -   LD_LIBRARY_PATH includes /usr/local/cuda-9.1/lib64, or, add /usr/local/cuda-8.0/lib64 to /etc/ld.so.conf and run ldconfig as root
>
> To uninstall the CUDA Toolkit, run the uninstall script in /usr/local/cuda-8.0/bin
>
> Please see CUDA_Installation_Guide_Linux.pdf in /usr/local/cuda-8.0/doc/pdf for detailed information on setting up CUDA.
>
> ***WARNING: Incomplete installation! This installation did not install the CUDA Driver. A driver of version at least 361.00 is required for CUDA 8.0 functionality to work.
> To install the driver using this installer, run the following command, replacing <CudaInstaller> with the name of this run file:
>     sudo <CudaInstaller>.run -silent -driver
>
> Logfile is /tmp/cuda_install_16708.log

- 重開機(reboot)
- 在software &Updates的Additional Drivers裡查看目前driver版本--是384????
- check cuda


```shell
#最后再来测试一下CUDA，运行：
nvidia-smi
```

- cuDNN

  到https://developer.nvidia.com/cudnn註冊帳號, 到: https://developer.nvidia.com/rdp/cudnn-download

  下載cuDNN6.0 for linux

   將terminal 路徑指到tgz檔的資料夾

```shell
CUDNN_TAR_FILE="cudnn-8.0-linux-x64-v6.0.tgz"
wget http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/${CUDNN_TAR_FILE}
tar -xzvf ${CUDNN_TAR_FILE}
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-8.0/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/
sudo chmod a+r /usr/local/cuda-8.0/lib64/libcudnn*

#声明环境变量，并将其写入到 ~/.bashrc 的尾部:
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
sudo ldconfig
echo $PATH
echo $LD_LIBRARY_PATH
```

- tensorflow

```shell
sudo apt-get -y upgrade
sudo apt-get install python-dev
sudo apt-get install python-pip
pip -V
sudo apt-get install libcupti-dev
pip install tensorflow-gpu
```


