# GenomeAnalysisVT2021
Genome Analysis Project

Project Details and Workflow of Project Paper 1
#### PacBio Workflow: ####

1. Correct, trim and assembly with Canu (preprocessing step)
2. Assembly evaluation with Quast (alternatively can use MUMmertools with reference genome download)
3. Assembly evaluation with MUMmerplot (Output in mummer_output.txt). Downloaded genome with wget ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/Enterococcus_faecium/representative/GCF_010120755.1_ASM1012075v1/GCF_010120755.1_ASM1012075v1_genomic.fna.gz. In the file mummer_output.txt
4. Assembly annotation with Prokka (Completed). Visualise with Artemis (Java issues on uppmax and locally)
5. Created genome index with BWA.
6. Bwa mem to map RNA reads. Paired end ERR 1797972 etc.
7. Htseq error at line 3227 (Error with GTF file)
Fixed GFF file error by removing FASTA sequences from line 3227 onwards.
Tested htseq-count with all 3 sets of paired ends reads in RNA_Seq_BH (worked with -t and -i options). Combined results of all three with awk '{ for(i=2; i<=NF;i++) j+=$i; print j; j=0 }' htseq_result_paired.txt > awk_data.txt, pr -mts' ' file1 file2, paste -d' ' file1 file2 and awk '{print $1, $NF}' htseq_test.txt > htseq_counts.txt {THIS IS WRONG}
8. ALTERNATE: Created htseq output files for each paired end run, i.e. for ERR1797972 there are 2 passes, use these as input to create one htseq count file. Repeat for remaining treated as well as RNA_Seq_Serum runs.
9. Used the same pipeline for RNA_Seq_Serum (results pending) -> RNA_map.sh, then paired_index.sh and htseq last
10. Blast efaecium contigs for synteny (pending) -> chosen enterococcus faecalis (might be too close for any meaningful result). Check genomes with ACT with .crunch output file
11. Run DESeq2 with both htseq files.
12. Create plots and make inferences.
