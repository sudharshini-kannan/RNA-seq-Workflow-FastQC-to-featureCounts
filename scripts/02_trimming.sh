#!/bin/bash

echo "========== Read Trimming =========="

mkdir -p results/trimmed

fastp \
-i raw_data/sample_R1.fastq.gz \
-I raw_data/sample_R2.fastq.gz \
-o results/trimmed/trimmed_R1.fastq.gz \
-O results/trimmed/trimmed_R2.fastq.gz \
-h results/trimmed/fastp.html \
-j results/trimmed/fastp.json

echo "Trimming completed successfully!"