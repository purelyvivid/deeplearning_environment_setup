# 如何建立一個python深度學習的conda環境 

## 安裝 Anaconda

首先你要先裝Anaconda，到[這裡](https://docs.anaconda.com/anaconda/install/)來下載你環境的版本，我的是ubuntu16.04，以下說明都是以這個作業系統環境。

## 建立一個機器學習的基底環境

```shell
conda create --name ml_base
conda activate ml_base
conda install pandas numpy scipy
conda install scikit-learn
conda install -c conda-forge matplotlib 
conda install -c anaconda git
conda install -c anaconda ipykernel
conda install -c conda-forge jupyterlab
conda deactivate
```

##建立一個python Tensorflow的conda環境

上述ml_base環境必須先建製完成

```shell
conda create --name tensorflow --clone ml_base
conda activate tensorflow
conda install -c anaconda tensorflow-gpu
python -m ipykernel install --user --name tensorflow --display-name "Python (tensorflow)"
conda deactivate
```

## 建立一個python Keras (基於Tensorflow)的conda環境

上述tensorflow環境必須先建製完成

```shell
conda create -n keras --clone tensorflow
conda activate keras
conda install -c conda-forge keras
python -m ipykernel install --user --name keras --display-name "Python (keras)" 
conda deactivate
```

## 建立一個python PyTorch的conda環境

上述ml_base環境必須先建製完成

```shell
conda create -n pytorch --clone ml_base
conda activate pytorch
conda install -c pytorch pytorch 
python -m ipykernel install --user --name pytorch --display-name "Python (pytorch)"
conda deactivate
```

## jupyter kernel的管理

```shell
# check all your kernel
jupyter kernelspec list
# delete your kernel
jupyter kernelspec uninstall yourKernel
```

