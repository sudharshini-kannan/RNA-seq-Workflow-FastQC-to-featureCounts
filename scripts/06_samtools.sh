#!/bin/bash

echo "==========================================="
echo " Day 10: SAMtools Analysis"
echo "==========================================="

cd ~/RNAseq_Project/RNA-seq-Training/mini_dataset

echo "===== BAM Header ====="
samtools view -H alignment/sample_Aligned.sortedByCoord.out.bam

echo

echo "===== First Five Alignments ====="
samtools view alignment/sample_Aligned.sortedByCoord.out.bam | head -5

echo

echo "===== Total Reads ====="
samtools view -c alignment/sample_Aligned.sortedByCoord.out.bam

echo

echo "===== Alignment Statistics ====="
samtools flagstat alignment/sample_Aligned.sortedByCoord.out.bam

echo

echo "===== Indexing BAM ====="
samtools index alignment/sample_Aligned.sortedByCoord.out.bam

echo

echo "SAMtools analysis completed successfully!"
