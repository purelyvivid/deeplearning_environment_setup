# conda cheat sheet: http://know.continuum.io/rs/387-XNW-688/images/conda-cheatsheet.pdf

#<1.tensowflow>
conda create --name tensorflow
conda activate tensorflow
conda install pandas numpy scipy
conda install scikit-learn
conda install -c anaconda tensorflow-gpu
conda install -c conda-forge matplotlib 
conda install -c anaconda git
conda install -c anaconda ipykernel
conda install -c conda-forge jupyterlab
python -m ipykernel install --user --name tensorflow --display-name "Python (tensorflow)"
conda deactivate

#<1-1. keras>
conda create -n keras --clone tensorflow
conda activate keras
conda install -c conda-forge keras
python -m ipykernel install --user --name keras --display-name "Python (keras)"       
conda deactivate

#<2. pytorch>
conda create -n pytorch
conda activate pytorch
conda install pandas numpy scipy
conda install scikit-learn
conda install -c pytorch pytorch 
conda install -c conda-forge matplotlib 
conda install -c anaconda git
conda install -c anaconda ipykernel
conda install -c conda-forge jupyterlab
python -m ipykernel install --user --name pytorch --display-name "Python (pytorch)"
conda deactivate


