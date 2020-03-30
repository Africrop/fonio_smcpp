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
for i in {CM07891,CM08635,CM05806,CM07350,CM07268,CM06496,CM07280,CM05836-C,CM05754,CM08627,CM05808,CM05830,CM05865,CM05827,CM07310,CM07908,CM07338,CM03418,CM05856,CM08524};
do /home/cubry/miniconda3/bin/smc++ vcf2smc -m /data2/projects/africrop_models/fonioWGS/SNPable_masks/all_fonio_mask_final.bed.gz -d $i $i /data2/projects/africrop_models/fonioWGS/Fonio_filtered-final.vcf.gz /data2/projects/africrop_models/fonioWGS/smcpp/Sample10/chr$c\.smc.masked.fonio_cultivatedSample10.$i\.gz Dexi_CM05836_chr$c `cat /data2/projects/africrop_models/fonioWGS/smcpp/list_fonio_cultivated_Sample10.csv`
done
done
