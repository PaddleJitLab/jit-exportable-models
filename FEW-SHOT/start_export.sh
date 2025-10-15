TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/Few-Shot
cd Few-Shot
git checkout master
meowda activate $TORCH_VENV
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/Few-Shot.paddle
cd Few-Shot.paddle
git checkout main
meowda activate $PADDLE_VENV
python export.py
