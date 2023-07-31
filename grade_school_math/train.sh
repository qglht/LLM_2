#!/bin/bash

#SBATCH --job-name=train
#SBATCH --time 04:00:00
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=4G
#SBATCH --gpus=1
#SBATCH --gres=gpumem:32g

module load gcc/8.2.0 python_gpu/3.10.4 eth_proxy
pip install .
python train.py "$@"
