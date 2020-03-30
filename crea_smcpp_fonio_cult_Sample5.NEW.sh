#!/bin/bash

#$ -j y
#$ -S /bin/bash
#$ -M philippe.cubry@ird.fr
#$ -N crea_smcpp
#$ -m be
#$ -V

##############
### SCRIPT ###
##############
for c in {01A,01B,02A,02B,03A,03B,04A,04B,05A,05B,06A,06B,07A,07B,08A,08B,09A,09B}
do
for i in {CM08613,CH3,CM05815,CM08669,CM07280,CM08681,CM07246,CM05855,CM12246,CM06496,CM03424,CM07354,CM08665,CM06510,CM05853,CM07321,CM07903,CM07327,CM05857,CM08635};
do /home/cubry/miniconda3/bin/smc++ vcf2smc -m /data2/projects/africrop_models/fonioWGS/SNPable_masks/all_fonio_mask_final.bed.gz -d $i $i /data2/projects/africrop_models/fonioWGS/Fonio_filtered-final.vcf.gz /data2/projects/africrop_models/fonioWGS/smcpp/Sample5/chr$c\.smc.masked.fonio_cultivatedSample5.$i\.gz Dexi_CM05836_chr$c `cat /data2/projects/africrop_models/fonioWGS/smcpp/list_fonio_cultivated_Sample5.csv`
done
done
