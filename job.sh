#!/bin/bash
#SBATCH --job-name=ann-ci
##SBATCH --exclusive
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=48
#SBATCH --partition=cpu
#SBATCH --time=02:00:00
#SBATCH --output=%j.out
#SBATCH --error=%j.err


source /home/d.rahul/miniconda/bin/activate
conda activate mscc
cd $SLURM_SUBMIT_DIR
mpirun python exe.py input_chain14_singlet.in

