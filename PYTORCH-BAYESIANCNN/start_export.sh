ROOT=`pwd`

pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/PyTorch-BayesianCNN
cd PyTorch-BayesianCNN
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/BayesianCNN.paddle
cd BayesianCNN.paddle
git checkout main
python export.py
