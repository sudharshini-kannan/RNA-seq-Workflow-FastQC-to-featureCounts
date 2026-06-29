# RNA-seq Training

A hands-on RNA-seq training project designed for beginners to learn the complete RNA-seq analysis workflow using Linux command-line tools.

## Overview

This repository contains a step-by-step RNA-seq pipeline covering:

* Quality Control using FastQC
* Read Trimming using fastp
* Reference Genome Preparation
* Read Alignment using STAR
* SAM/BAM Processing using SAMtools
* Gene Read Counting using featureCounts
* Differential Gene Expression Analysis using DESeq2

---

## Project Structure

```text
RNA-seq-Training/
│
├── raw_data/
├── reference/          # Downloaded locally (ignored by Git)
├── results/            # Generated during analysis (ignored by Git)
├── scripts/
│   ├── 01_fastqc.sh
│   ├── 02_trimming.sh
│   ├── 03_reference_download.sh
│   ├── 04_star_index.sh
│   ├── 05_alignment.sh
│   └── 06_featureCounts.sh
└── README.md
```

---

## Getting Started

Clone the repository:

```bash
git clone https://github.com/sudharshini-kannan/RNA-seq-Training.git
cd RNA-seq-Training
```

---

## Workflow

Run the scripts in the following order:

```bash
bash scripts/01_fastqc.sh
bash scripts/02_trimming.sh
bash scripts/03_reference_download.sh
bash scripts/04_star_index.sh
bash scripts/05_alignment.sh
bash scripts/06_featureCounts.sh
```

---

## Reference Genome

The reference genome and gene annotation files are **not included** in this repository because they are too large for GitHub.

Run the following script to download them automatically:

```bash
bash scripts/03_reference_download.sh
```

This script downloads the required files into the `reference/` directory.

---

## Training Dataset

The repository uses a small paired-end RNA-seq dataset for hands-on practice.

Example files:

* `sample_R1.fastq.gz`
* `sample_R2.fastq.gz`

---

## Software Used

* Ubuntu (WSL)
* FastQC
* fastp
* STAR
* SAMtools
* featureCounts
* R
* RStudio
* DESeq2

---

## Learning Objectives

By completing this project, you will learn how to:

* Perform quality assessment of RNA-seq data
* Trim sequencing reads
* Download and prepare a reference genome
* Build a STAR genome index
* Align RNA-seq reads using STAR
* Process SAM/BAM files using SAMtools
* Generate gene count matrices using featureCounts
* Perform differential gene expression analysis using DESeq2

---

## Notes

* Large files such as reference genomes, STAR genome indices, BAM files, and result files are generated locally and are excluded from GitHub using `.gitignore`.
* This repository contains only the scripts and supporting files required to reproduce the complete RNA-seq workflow.

---

## Author

**Sudharshini Kannan**

M.Sc. Agrobiotechnology (Bioinformatics & NGS)

GitHub: https://github.com/sudharshini-kannan
