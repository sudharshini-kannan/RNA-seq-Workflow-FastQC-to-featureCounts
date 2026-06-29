#!/bin/bash

echo "==========================================="
echo " Day 8: Download Reference Genome"
echo "==========================================="

# Go to the project directory
cd ~/RNAseq_Project/RNA-seq-Training

# Create reference folder
mkdir -p reference

# Move into the reference folder
cd reference

echo "Downloading Human Reference Genome (GRCh38)..."

wget https://ftp.ensembl.org/pub/release-116/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz

echo "Downloading Gene Annotation..."

wget https://ftp.ensembl.org/pub/release-116/gtf/homo_sapiens/Homo_sapiens.GRCh38.116.gtf.gz

echo "Extracting files..."

gunzip Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
gunzip Homo_sapiens.GRCh38.116.gtf.gz

echo "==========================================="
echo "Reference files downloaded successfully!"
echo "==========================================="

ls -lh