TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh
pip install scipy

git clone https://github.com/PaddleJitLab/EAST
cd EAST
git checkout master
meowda activate $TORCH_VENV
meowda install -q scipy 
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/EAST.paddle
cd EAST.paddle
git checkout main
meowda activate $PADDLE_VENV
meowda install -q scipy
python export.py