#!/bin/bash
## On définit le nom du job
#SBATCH --job-name=smcpp_cultivated_Group2_cv_slurm
## On définit le nom du fichier de sortie
#SBATCH --output=smcpp_cultivated_cv_slurm_supermem_notp_group2B.txt
## On définit la partition
#SBATCH -p supermem
## On définit le nombre de tâches
#SBATCH -n 1
## On définit le nombre cpu
#SBATCH -c 5
## On exporte les variables d'environnement
#SBATCH --export variables

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

/home/cubry/miniconda3/bin/smc++ cv -o /data2/projects/africrop_models/fonioWGS/smcpp/output_cultivated_group2/cv_notimepoints_supermemB/ --spline pchip --cores 5 6.5e-9 --timepoints 200 25000 /data2/projects/africrop_models/fonioWGS/smcpp/Group2/*.smc.masked.fonio_cultivatedG2*
