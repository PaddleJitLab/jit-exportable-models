ROOT=`pwd`

pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/dino --depth 10
cd dino
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/dino.paddle --depth 10
cd dino.paddle
git checkout main
python export.py
