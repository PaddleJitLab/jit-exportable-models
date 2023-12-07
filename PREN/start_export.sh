ROOT=`pwd`

pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install numpy easydict


git clone https://github.com/PaddleJitLab/pren
cd pren
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/pren.paddle
cd pren.paddle
git checkout main
python export.py
