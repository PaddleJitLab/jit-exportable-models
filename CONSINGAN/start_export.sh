ROOT=`pwd`

pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install scipy scikit-image matplotlib


git clone https://github.com/PaddleJitLab/ConSinGAN
cd ConSinGAN
git checkout master
python export.py --train_mode generation --input_name Images/Generation/angkorwat.jpg


cd $ROOT
git clone https://github.com/PaddleJitLab/ConSinGAN.paddle
cd ConSinGAN.paddle
git checkout main
python export.py --train_mode generation --input_name Images/Generation/angkorwat.jpg
