ROOT=`pwd`

pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/Few-Shot
cd Few-Shot
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/Few-Shot.paddle
cd Few-Shot.paddle
git checkout main
python export.py
