ROOT=`pwd`

pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install numpy


git clone https://github.com/PaddleJitLab/DeepRecommender
cd DeepRecommender
git checkout master
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/DeepRecommender.paddle
cd DeepRecommender.paddle
git checkout main
python export.py
