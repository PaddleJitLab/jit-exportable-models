ROOT=`pwd`

pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/wide-resnet.pytorch
cd wide-resnet.pytorch
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/wide-resnet.paddle
cd wide-resnet.paddle
git checkout main
python export.py
