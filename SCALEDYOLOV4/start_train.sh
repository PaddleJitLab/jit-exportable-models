ROOT=`pwd`

pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install numpy opencv-python matplotlib pyyaml scipy tqdm


git clone https://github.com/PaddleJitLab/ScaledYOLOv4
cd ScaledYOLOv4
git checkout yolov4-large
python export.py


cd $ROOT
git clone https://github.com/PaddleJitLab/ScaledYOLOv4.paddle
cd ScaledYOLOv4.paddle
git checkout main
python export.py
