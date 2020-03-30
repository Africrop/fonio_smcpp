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
for i in {CM05834,CM08627,CM03438,CM08653,CM06505,CM05869,CM07310,CM07292,CM05855,CM07895,CM07234,CM05853,CM07249,CM07340,CM05761,CM03400,CM07360,CM07350,CM05839,CM08613};
do /home/cubry/miniconda3/bin/smc++ vcf2smc -m /data2/projects/africrop_models/fonioWGS/SNPable_masks/all_fonio_mask_final.bed.gz -d $i $i /data2/projects/africrop_models/fonioWGS/Fonio_filtered-final.vcf.gz /data2/projects/africrop_models/fonioWGS/smcpp/Sample8/chr$c\.smc.masked.fonio_cultivatedSample8.$i\.gz Dexi_CM05836_chr$c `cat /data2/projects/africrop_models/fonioWGS/smcpp/list_fonio_cultivated_Sample8.csv`
done
done
