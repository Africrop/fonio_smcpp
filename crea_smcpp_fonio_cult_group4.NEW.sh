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
for i in {CM07354,CM08628,CM08635,CM08627,CM08613,CM05792,CM07350,CM07340,CM07342,CM08655,CM07346,CM08642,CM07360,CM05796,CM07246,CM08652,CM08653,CM07234,CM07338,CM05811,CM05819,CM05810,CM05772,CM08669,CM05808,CM07268,CM08537};
do /home/cubry/miniconda3/bin/smc++ vcf2smc -m /data2/projects/africrop_models/fonioWGS/SNPable_masks/all_fonio_mask_final.bed.gz -d $i $i /data2/projects/africrop_models/fonioWGS/Fonio_filtered-final.vcf.gz /data2/projects/africrop_models/fonioWGS/smcpp/Group4/chr$c\.smc.masked.fonio_cultivatedG4.$i\.gz Dexi_CM05836_chr$c `cat /data2/projects/africrop_models/fonioWGS/smcpp/list_fonio_cultivated_G4.csv`
done
done
