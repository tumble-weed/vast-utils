conda remove -n gpnnenv --all
conda create -n gpnnenv python=3.8
conda activate gpnnenv
conda install -c anaconda pip 
conda activate gpnnenv
bash install_jupyter.sh
