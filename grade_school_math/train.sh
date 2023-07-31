#!/bin/bash

#SBATCH --cpus-per-task=5
#SBATCH --mem-per-cpu=4G
#SBATCH --gpus=1
#SBATCH --gres=gpumem:8G
#SBATCH --time=4:00:00

module load gcc/8.2.0 python_gpu/3.10.4 r/4.0.2 git-lfs/2.3.0 eth_proxy npm/6.14.9
pip install .
python grade_school_math/train.py