TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/recurrent-visual-attention
cd recurrent-visual-attention
git checkout master
meowda activate $TORCH_VENV
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/recurrent-visual-attention.paddle
cd recurrent-visual-attention.paddle
git checkout main
meowda activate $PADDLE_VENV
python export.py
