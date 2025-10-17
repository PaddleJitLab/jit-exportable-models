TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/PAN.pytorch --depth 10
cd PAN.pytorch
git checkout master
meowda activate $TORCH_VENV
meowda install opencv-python matplotlib pyclipper
python export.py

cd $ROOT
git clone https://github.com/PaddleJitLab/PAN.pytorch.paddle --depth 10
cd PAN.pytorch.paddle
git checkout main
meowda activate $PADDLE_VENV
meowda install opencv-python matplotlib pyclipper
python export.py
