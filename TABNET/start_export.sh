ROOT=`pwd`

pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/tabnet
cd tabnet
git checkout develop
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/tabnet.paddle
cd tabnet.paddle
git checkout main
python export.py
