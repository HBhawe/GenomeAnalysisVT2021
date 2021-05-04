#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J paired_index
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com

module load bioinfo-tools
module load samtools/1.10

samtools index aln_paired_ERR1797972.bam aln_paired_ERR1797972.bai
samtools index aln_paired_ERR1797973.bam aln_paired_ERR1797973.bai
samtools index aln_paired_ERR1797974.bam aln_paired_ERR1797974.bai
