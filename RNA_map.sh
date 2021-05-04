#!/bin/bash --login

#SBATCH -A g2021012
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J RNA_map
#SBATCH --mail-type=ALL
#SBATCH --mail-user harshalb97@outlook.com

module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10


bwa mem /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/genome/efaecium.contigs.fasta /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz | samtools sort -o aln_paired_ERR1797972.bam
bwa mem /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/genome/efaecium.contigs.fasta /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz | samtools sort -o aln_paired_ERR1797973.bam
bwa mem /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/genome/efaecium.contigs.fasta /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz | samtools sort -o aln_paired_ERR1797974.bam
#bwa mem /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/genome/efaecium.contigs.fasta /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_single_ERR1797972_pass_1.fastq.gz /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_single_ERR1797972_pass_2.fastq.gz | samtools sort -o aln_single_ERR1797972.bam
#bwa mem /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/genome/efaecium.contigs.fasta /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_single_ERR1797973_pass_1.fastq.gz /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_single_ERR1797973_pass_2.fastq.gz | samtools sort -o aln_single_ERR1797973.bam
#bwa mem /domus/h1/harsbhaw/GA_Project/Genomics_data/PacBio/genome/efaecium.contigs.fasta /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_single_ERR1797974_pass_1.fastq.gz /domus/h1/harsbhaw/GA_Project/Transcriptomics_data/RNA-Seq_BH/trim_single_ERR1797974_pass_2.fastq.gz | samtools sort -o aln_single_ERR1797974.bam



