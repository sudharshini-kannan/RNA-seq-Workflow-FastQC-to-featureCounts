#!/bin/bash

echo "==========================================="
echo " Day 11: Gene Read Counting using featureCounts"
echo "==========================================="

# Move to the mini dataset directory
cd ~/RNAseq_Project/RNA-seq-Training/mini_dataset

# Create output folder
mkdir -p counts

echo "Running featureCounts..."

featureCounts \
-T 2 \
-p \
--countReadPairs \
-a MiniGenome.gtf \
-o counts/gene_counts.txt \
alignment/sample_Aligned.sortedByCoord.out.bam

echo ""
echo "==========================================="
echo " Gene counting completed successfully!"
echo "==========================================="

echo ""
echo "Output files:"
ls -lh counts

echo ""
echo "Preview of gene count matrix:"
head counts/gene_counts.txt

echo ""
echo "Summary:"
cat counts/gene_counts.txt.summary
