#!/bin/bash
## On définit le nom du job
#SBATCH --job-name=smcpp_cultivated_Sample8_cv_slurm
## On définit le nom du fichier de sortie
#SBATCH --output=smcpp_cultivated_cv_slurm_tp_sample8B.txt
## On définit le nombre de tâches
#SBATCH -n 1
## On définit le nombre cpu
#SBATCH -c 5
## On exporte les variables d'environnement
#SBATCH --export variables

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

/home/cubry/miniconda3/bin/smc++ cv -o /data2/projects/africrop_models/fonioWGS/smcpp/output_cultivated_sample8/cv_timepointsB/ --spline pchip --timepoints 200 25000 --cores 5 6.5e-9 /data2/projects/africrop_models/fonioWGS/smcpp/Sample8/*.smc.masked.fonio_cultivatedSample8*
