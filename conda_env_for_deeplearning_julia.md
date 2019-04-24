# 如何建立一個julia深度學習的conda環境 

## 安裝 Anaconda

首先你要先裝Anaconda，到[這裡](https://docs.anaconda.com/anaconda/install/)來下載你環境的版本，我的是ubuntu16.04，以下說明都是以這個作業系統環境。

## 建立一個julia Flux的conda環境

首先你要先知道你的jupyter灌在哪個路徑

```shell
which jupyter
```

> /home/phoebehuang/anaconda3/bin/jupyter

複製該路徑，然後

```shell
conda create -n julia_flux
conda activate julia_flux
conda install -c conda-forge julia
which julia # 確定你的版本是1.0以上
julia
```

此時在julia的命令行下

```julia
ENV["JUPYTER"]="/home/phoebehuang/anaconda3/bin/jupyter" #剛剛你複製的路徑
] #是為了叫出Pkg模式
```

此時在Pkg模式下

```shell
add IJulia
add Flux # install Flux, Flux是一個julia的深度學習套件
test Flux # (Optional) for testing
```

(Optional) 如果你的環境有gpu

```shell
add CuArrays
add CUDAdrv
add CUDAnative
add GPUArrays
test CUDAnative
```

> [ Info: Testing using device GeForce GTX 1080
>  Test Summary: | Pass  Broken  Total
>    CUDAnative    |  272       1    273
>    Testing CUDAnative tests passed

接下來按 ctrl+c 離開pkg模式，回到julia模式

```shell
exit() # 離開julia
conda deactivate # 離開此conda環境
```

此時

- 到工作資料夾下用`jupyter notebook`命令行開啟 jupyter ，會發現多一個 julia 的 kernel
- 或是用`jupyter kernelspec list`來檢查多出來的kernel



## jupyter kernel的管理

```shell
# check all your kernel
jupyter kernelspec list
# delete your kernel
jupyter kernelspec uninstall yourKernel
```

