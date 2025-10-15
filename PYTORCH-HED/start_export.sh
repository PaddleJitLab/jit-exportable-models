TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/pytorch-hed
cd pytorch-hed
git checkout master
meowda activate $TORCH_VENV
meowda install -r requirements.txt -q
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/pytorch-hed.paddle
cd pytorch-hed.paddle
git checkout main
meowda activate $PADDLE_VENV
meowda install -r requirements.txt -q
python export.py
