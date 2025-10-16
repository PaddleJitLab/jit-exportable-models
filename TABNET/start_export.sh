ROOT=`pwd`

pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/tabnet --depth 10
cd tabnet
git checkout develop
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/tabnet.paddle --depth 10
cd tabnet.paddle
git checkout main
python export.py
