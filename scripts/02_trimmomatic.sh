#!/bin/bash

# ==========================================================
# Step 02 - Adapter Trimming using Trimmomatic
# ==========================================================

echo "=========================================="
echo "Running Trimmomatic..."
echo "=========================================="

mkdir -p ../results/trimmed

for SAMPLE in HG002 HG003 HG004
do
    trimmomatic PE \
    ../data/raw/${SAMPLE}/${SAMPLE}_R1.fastq.gz \
    ../data/raw/${SAMPLE}/${SAMPLE}_R2.fastq.gz \
    ../results/trimmed/${SAMPLE}_R1_paired.fastq.gz \
    ../results/trimmed/${SAMPLE}_R1_unpaired.fastq.gz \
    ../results/trimmed/${SAMPLE}_R2_paired.fastq.gz \
    ../results/trimmed/${SAMPLE}_R2_unpaired.fastq.gz \
    ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
    LEADING:20 \
    TRAILING:20 \
    SLIDINGWINDOW:4:20 \
    MINLEN:50
done

echo "=========================================="
echo "Trimming Completed Successfully!"
echo "Output saved in results/trimmed/"
echo "=========================================="
