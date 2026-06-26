#!/bin/bash

# ==========================================================
# Trio WES Rare Disease Pipeline
# Step 00 - Download Example Dataset
# Author: Anmol Kumar
# ==========================================================

echo "=============================================="
echo "Downloading Example Trio WES Dataset"
echo "=============================================="

# Create directory if it does not exist
mkdir -p ../data/raw

cd ../data/raw

echo "Downloading example FASTQ files..."

# Replace these URLs with actual sequencing data when available.
wget https://example.com/father_R1.fastq.gz
wget https://example.com/father_R2.fastq.gz

wget https://example.com/mother_R1.fastq.gz
wget https://example.com/mother_R2.fastq.gz

wget https://example.com/child_R1.fastq.gz
wget https://example.com/child_R2.fastq.gz

echo "Download completed."

echo "Raw FASTQ files are stored in:"
pwd
