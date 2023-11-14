pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install tqdm

ROOT=`pwd`

git clone https://github.com/PaddleJitLab/TiSASRec.pytorch
cd TiSASRec.pytorch
git checkout master
python export.py --dataset=ml-1m --train_dir=default


cd $ROOT
git clone https://github.com/PaddleJitLab/TiSASRec.pytorch.paddle
cd TiSASRec.pytorch.paddle
git checkout master
python export.py --dataset=ml-1m --train_dir=default
