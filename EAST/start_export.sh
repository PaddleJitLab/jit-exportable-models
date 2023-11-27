ROOT=`pwd`

pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118

git clone https://github.com/PaddleJitLab/EAST
cd EAST
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/EAST.paddle
cd EAST.paddle
git checkout main
python export.py
