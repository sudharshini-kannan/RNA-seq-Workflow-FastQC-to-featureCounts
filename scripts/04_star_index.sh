#!/bin/bash

echo "==========================================="
echo " Day 9: STAR Genome Index Generation"
echo "==========================================="

cd ~/RNAseq_Project/RNA-seq-Training/mini_dataset

mkdir -p star_index

STAR \
--runThreadN 2 \
--runMode genomeGenerate \
--genomeDir star_index \
--genomeFastaFiles MiniGenome.fa \
--sjdbGTFfile MiniGenome.gtf \
--sjdbOverhang 49

echo "STAR genome index generated successfully!"
