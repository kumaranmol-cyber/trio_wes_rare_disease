#!/bin/bash

# ==========================================================
# Step 01 - FastQC Quality Control
# ==========================================================

echo "Running FastQC..."

mkdir -p ../results/fastqc

fastqc ../data/raw/HG002/*.fastq.gz -o ../results/fastqc
fastqc ../data/raw/HG003/*.fastq.gz -o ../results/fastqc
fastqc ../data/raw/HG004/*.fastq.gz -o ../results/fastqc

echo "FastQC completed successfully."
