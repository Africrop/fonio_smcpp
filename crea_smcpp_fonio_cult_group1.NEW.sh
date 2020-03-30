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
for i in {CM05841,CM05843,CM05856,CM05842,CM06496,CM05857,CM05844,CM05839,CM05840,CM05853,CM05835,CM06501,CM05858,CM05847,CM05849,CM05836-C};
do /home/cubry/miniconda3/bin/smc++ vcf2smc -m /data2/projects/africrop_models/fonioWGS/SNPable_masks/all_fonio_mask_final.bed.gz -d $i $i /data2/projects/africrop_models/fonioWGS/Fonio_filtered-final.vcf.gz /data2/projects/africrop_models/fonioWGS/smcpp/Group1/chr$c\.smc.masked.fonio_cultivatedG1.$i\.gz Dexi_CM05836_chr$c `cat /data2/projects/africrop_models/fonioWGS/smcpp/list_fonio_cultivated_G1.csv`
done
done
