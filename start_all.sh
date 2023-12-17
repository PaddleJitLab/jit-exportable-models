ROOT=`pwd`
mkdir build
cd build
source ~/.bashrc
repos=`find $ROOT -name "*.sh" -not -path "*/build/*" -not -name "start_all.sh"`
for value in $repos
do 
    conda activate base
    conda env remove --name jit_export
    yes | conda create -n jit_export python=3.9
    conda activate jit_export
    pip install torch torchvision torchaudio
    pip install paddlepaddle-gpu==0.0.0.post112 -f https://www.paddlepaddle.org.cn/whl/linux/gpu/develop.html
    echo "[JIT]" $value
    bash $value
done 