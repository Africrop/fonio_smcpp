#!/bin/sh

# Before running, ensure it is correctly formatted by using dos2unix script_name.sh
# Make it executable by chmod 755 script_name.sh
# Usage : qsub run_bamCaller.sh <input file> <depth>
# Caution : to be launched from the directory where resides the file to be processed

# ecrit les erreurs dans le fichier de sortie standard 
#$ -j y 

# shell que l'on veut utiliser 
#$ -S /bin/bash 

# indiquer son email pour suivre l'execution : 
#$ -M philippe.cubry@ird.fr

# obtenir un message au demarrage (b) , a la fin (e), en cas d'abandon (a) 
#$ -m bea 

# la queue que l'on veut utiliser : 
#$ -q *@node10

#$ -N bamCaller

#Exporte les variables d environnement
#$ -V

# Charge la bonne version de Python
module load system/python/3.6.0a3

#Crée le fichier temporaire
cd /scratch/cubry_tmp_fonio/

#Run the program using the defined file (suppose the ref file is in the scratch)
for i in {Dexi_CM05836_chr01A,Dexi_CM05836_chr01B,Dexi_CM05836_chr02A,Dexi_CM05836_chr02B,Dexi_CM05836_chr03A,Dexi_CM05836_chr03B,Dexi_CM05836_chr04A,Dexi_CM05836_chr04B,Dexi_CM05836_chr05A,Dexi_CM05836_chr05B,Dexi_CM05836_chr06A,Dexi_CM05836_chr06B,Dexi_CM05836_chr07A,Dexi_CM05836_chr07B,Dexi_CM05836_chr08A,Dexi_CM05836_chr08B,Dexi_CM05836_chr09A,Dexi_CM05836_chr09B}
do
samtools mpileup -q 20 -Q 30 -C 50 -r $i -u -f 150419_Digitaria_Exilis_v1.0_pseudomolecules.fasta $1| bcftools call -c -V indels | ~/scripts/msmc_tools/./bamCaller.py $2 $1-$i.mask.bed.gz | gzip -c >$1-$i.vcf.gz
done
