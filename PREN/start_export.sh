TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/pren --depth 10
cd pren
git checkout master
meowda activate $TORCH_VENV
meowda install numpy easydict
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/pren.paddle --depth 10
cd pren.paddle
git checkout main
meowda activate $PADDLE_VENV
meowda install numpy easydict
python export.py
