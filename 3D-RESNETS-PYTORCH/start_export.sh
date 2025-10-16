TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/3D-RESNETS-PYTORCH --depth 10
cd 3D-RESNETS-PYTORCH
git checkout master
meowda activate $TORCH_VENV
python export.py

cd $ROOT
git clone https://github.com/PaddleJitLab/3D-RESNETS-PYTORCH.paddle --depth 10
cd 3D-RESNETS-PYTORCH.paddle
git checkout main
meowda activate $PADDLE_VENV
python export.py
