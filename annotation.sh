#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J pacbio_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com


module load bioinfo-tools
module load prokka/1.45-5b58020

prokka --outdir Genome_Annotation --prefix efaecium /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/Preprocessing_Assembly/efaecium.contigs.fasta
