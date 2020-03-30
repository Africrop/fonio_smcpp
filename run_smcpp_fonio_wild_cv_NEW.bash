#!/bin/bash
## On définit le nom du job
#SBATCH --job-name=smcpp_wild_cv_slurm
## On définit le nom du fichier de sortie
#SBATCH --output=smcpp_wild_cv_slurm.txt
## On définit le nombre de tâches
#SBATCH --ntasks=1
## On définit la partition
#SBATCH -p=supermem
## On définit le nombre	de tâches
#SBATCH	-n=1
## On définit le nombre cpu
#SBATCH -c=5
#!/bin/sh

/home/cubry/miniconda3/bin/smc++ cv -o /data2/projects/africrop_models/fonioWGS/smcpp/output_wild/cv_notimepoints_slurm/ --spline pchip --cores 5 6.5e-9 /data2/projects/africrop_models/fonioWGS/smcpp/*masked.fonio_wild.NEW*
