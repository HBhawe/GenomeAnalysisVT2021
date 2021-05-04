#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J genome_index
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com

module load bioinfo-tools
module load bwa/0.7.17

bwa index efaecium.contigs.fasta
