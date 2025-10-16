TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/TiSASRec.pytorch --depth 10
cd TiSASRec.pytorch
git checkout master
meowda activate $TORCH_VENV
meowda install tqdm
python export.py --dataset=ml-1m --train_dir=default


cd $ROOT
git clone https://github.com/PaddleJitLab/TiSASRec.pytorch.paddle --depth 10
cd TiSASRec.pytorch.paddle
git checkout master
meowda activate $PADDLE_VENV
meowda install tqdm
python export.py --dataset=ml-1m --train_dir=default
