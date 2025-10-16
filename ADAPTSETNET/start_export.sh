TORCH_VENV=$1
PADDLE_VENV=$2
ROOT=`pwd`

meowda init init_env.sh
source init_env.sh

git clone https://github.com/PaddleJitLab/AdaptSegNet --depth 10
cd AdaptSegNet
git checkout master
meowda activate $TORCH_VENV
meowda install scipy scikit-image matplotlib 'albumentations<1' 'numpy<2'
python export.py --train_mode generation --input_name Images/Generation/angkorwat.jpg

cd $ROOT
git clone https://github.com/PaddleJitLab/AdaptSegNet.paddle --depth 10
cd AdaptSegNet.paddle
git checkout main
meowda activate $PADDLE_VENV
meowda install scipy scikit-image matplotlib 'albumentations<1' 'numpy<2'
python export.py --train_mode generation --input_name Images/Generation/angkorwat.jpg
