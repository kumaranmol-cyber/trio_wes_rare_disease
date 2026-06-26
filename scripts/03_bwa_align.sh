#!/bin/bash

# ==========================================================
# Step 03 - Read Alignment using BWA-MEM
# ==========================================================

echo "=========================================="
echo "Starting BWA-MEM Alignment"
echo "=========================================="

mkdir -p ../results/aligned

REFERENCE=../data/reference/hg38.fa

for SAMPLE in HG002 HG003 HG004
do
    echo "Aligning ${SAMPLE}..."

    bwa mem -t 8 \
    $REFERENCE \
    ../results/trimmed/${SAMPLE}_R1_paired.fastq.gz \
    ../results/trimmed/${SAMPLE}_R2_paired.fastq.gz \
    > ../results/aligned/${SAMPLE}.sam

    echo "${SAMPLE} alignment completed."
done

echo "=========================================="
echo "BWA Alignment Completed Successfully!"
echo "SAM files saved in results/aligned/"
echo "=========================================="
