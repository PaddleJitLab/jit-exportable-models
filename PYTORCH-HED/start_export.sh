ROOT=`pwd`

git clone https://github.com/PaddleJitLab/pytorch-hed
cd pytorch-hed
git checkout master
pip install -r requirements.txt
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/pytorch-hed.paddle
cd pytorch-hed.paddle
git checkout main
python export.py
