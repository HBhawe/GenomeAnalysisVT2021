#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J pacbio_mummer
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com

module load bioinfo-tools
module load MUMmer/4.0.0rc1

mummer GCF_010120755.1_ASM1012075v1_genomic.fna efaecium.contigs.fasta>mummer_output.txt
