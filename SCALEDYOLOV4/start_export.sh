TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/ScaledYOLOv4 --depth 10
cd ScaledYOLOv4
git checkout yolov4-large
meowda activate $TORCH_VENV
meowda install 'numpy<2' opencv-python matplotlib pyyaml scipy tqdm -q
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/ScaledYOLOv4.paddle --depth 10
cd ScaledYOLOv4.paddle
git checkout main
meowda activate $PADDLE_VENV
meowda install 'numpy<2' opencv-python matplotlib pyyaml scipy tqdm -q
python export.py
