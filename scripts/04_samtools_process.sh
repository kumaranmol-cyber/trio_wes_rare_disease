#!/bin/bash

# ==========================================================
# Step 04 - SAM to BAM Conversion, Sorting and Indexing
# ==========================================================

echo "=========================================="
echo "Processing Alignment Files with SAMtools"
echo "=========================================="

for SAMPLE in HG002 HG003 HG004
do
    echo "Processing ${SAMPLE}..."

    # Convert SAM to BAM
    samtools view -Sb ../results/aligned/${SAMPLE}.sam \
    > ../results/aligned/${SAMPLE}.bam

    # Sort BAM
    samtools sort \
    ../results/aligned/${SAMPLE}.bam \
    -o ../results/aligned/${SAMPLE}_sorted.bam

    # Index BAM
    samtools index \
    ../results/aligned/${SAMPLE}_sorted.bam

    echo "${SAMPLE} processing completed."

done

echo "=========================================="
echo "SAMtools Processing Completed Successfully!"
echo "Sorted BAM files saved in results/aligned/"
echo "=========================================="
