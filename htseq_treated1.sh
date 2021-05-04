#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 6:00:00
#SBATCH -J htseq_test
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com

module load bioinfo-tools
module load htseq/0.12.4

htseq-count -t CDS -i locus_tag -f bam aln_paired_ERR1797972.bam /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/Genome_Annotation/revised_efaecium.gff > treated1.txt

