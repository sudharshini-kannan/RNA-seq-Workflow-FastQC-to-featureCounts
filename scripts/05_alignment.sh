#!/bin/bash

echo "==========================================="
echo " Day 9: RNA-seq Read Alignment using STAR"
echo "==========================================="

cd ~/RNAseq_Project/RNA-seq-Training/mini_dataset

mkdir -p alignment

STAR \
--runThreadN 2 \
--genomeDir star_index \
--readFilesIn sample_R1.fastq.gz sample_R2.fastq.gz \
--readFilesCommand zcat \
--outSAMtype BAM SortedByCoordinate \
--outFileNamePrefix alignment/sample_

echo "Alignment completed successfully!"
