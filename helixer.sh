#!/bin/bash
#SBATCH --job-name=Toli_helixer
#SBATCH --output=Toli_helixer.out
#SBATCH --mail-user=andrew.mongue@ufl.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --gpus=a100:1
#SBATCH --partition gpu
#SBATCH --mem=50gb
#SBATCH --time=124:00:00
module load helixer
Helixer.py --subsequence-length 213840 --model-filepath invertebrate_v0.3_a_0600.h5 --fasta-path /blue/andrew.mongue/andrew.mongue/Toli/1_Masking/update/Toli_kanzen.filtered.fa.masked.fa --species Toumeyella_liriodendri --gff-output-path /blue/andrew.mongue/andrew.mongue/Toli/3_Annotation/helixer/Toli_helixer_kanzen.gff3
