export PYTHONWARNINGS=ignore

ROOT=`pwd`
TORCH_VENV="torch-py310"
PADDLE_VENV="paddle-py310"
mkdir build
cd build

meowda init init_env.sh
source init_env.sh
repos=(
  "CONSINGAN"
  "PYTORCH-HED"
  "EAST"
  "PREN"
  "RECURRENT-VISUAl-ATTENTION"
  "TISASREC.PYTORCH"
  "WIDE-RESNET.PYTORCH"
  "FEW-SHOT"
  "SCALEDYOLOV4"
  "DEEPRECOMMENDER"
  "PYTORCH-BAYESIANCNN"
  "ADAPTSETNET"
  "TINY-FACES-PYTORCH"
  "SUPCONTRAST"
  "ESPNETV2"
  "3D-RESNETS-PYTORCH"
  "PYTORCH-GAN"
)
for repo in "${repos[@]}"; do
    # Init torch environment
    meowda create $TORCH_VENV -p 3.10 --local -c
    meowda activate $TORCH_VENV
    meowda install torch torchvision -i https://download.pytorch.org/whl/cu126 -q

    # Init paddle environment
    meowda create $PADDLE_VENV -p 3.10 --local -c
    meowda activate $PADDLE_VENV
    meowda install paddlepaddle-gpu==3.2.0 -i https://www.paddlepaddle.org.cn/packages/stable/cu126/ -q

    # Run model export
    echo "[JIT] start run model $repo"
    bash ../$repo/start_export.sh $TORCH_VENV $PADDLE_VENV
done 