#!/bin/bash

echo "========== FastQC Analysis =========="

mkdir -p results/fastqc

fastqc raw_data/sample_R1.fastq.gz raw_data/sample_R2.fastq.gz \
-o results/fastqc

echo "FastQC completed successfully!"
echo "Results are available in results/fastqc/"