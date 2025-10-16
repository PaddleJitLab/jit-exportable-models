TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/ESPNetv2 --depth 10
cd ESPNetv2
git checkout master
meowda activate $TORCH_VENV
python export.py

cd $ROOT
git clone https://github.com/PaddleJitLab/ESPNetv2.paddle --depth 10
cd ESPNetv2.paddle
git checkout main
meowda activate $PADDLE_VENV
python export.py
