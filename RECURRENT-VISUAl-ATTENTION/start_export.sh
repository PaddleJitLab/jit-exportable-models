ROOT=`pwd`

pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/recurrent-visual-attention
cd recurrent-visual-attention
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/recurrent-visual-attention.paddle
cd recurrent-visual-attention.paddle
git checkout main
python export.py
