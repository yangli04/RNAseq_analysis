#!/bin/bash
#SBATCH --job-name=snakemake
#SBATCH --output=out.snake
#SBATCH --error=err.snake
#SBATCH --account=pi-dr-pepper
#SBATCH --time=36:00:00
#SBATCH --partition=bigmem
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --mem-per-cpu=10000

cd ~/workspace/RNAseq_analysis

# Write your own profile here if you want to use a slurm system to submit jobs. 
# snakemake --profile ~/.config/snakemake7/

# otherwise you can do the default way to run the pipeline.
snakemake --cores 10
