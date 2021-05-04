#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 1:00:00
#SBATCH -J blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com


module load bioinfo-tools
module load blast/2.11.0+

blastn -query GCF_012563145.1_ASM1256314v1_genomic.fna.gz  -db efaecium.contigs.fasta -outfmt 6 > blast_results.crunch
