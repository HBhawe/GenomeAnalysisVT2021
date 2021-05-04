#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J test_canu_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com

module load bioinfo-tools
module load quast/5.0.2

quast.py efaecium.contigs.fasta
