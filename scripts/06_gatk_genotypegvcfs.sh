#!/bin/bash

# ==========================================================
# Step 06 - Joint Genotyping using GATK
# ==========================================================

echo "=========================================="
echo "Running Joint Genotyping"
echo "=========================================="

REFERENCE=../data/reference/hg38.fa

gatk CombineGVCFs \
    -R $REFERENCE \
    -V ../results/variants/HG002.g.vcf.gz \
    -V ../results/variants/HG003.g.vcf.gz \
    -V ../results/variants/HG004.g.vcf.gz \
    -O ../results/variants/trio.g.vcf.gz

gatk GenotypeGVCFs \
    -R $REFERENCE \
    -V ../results/variants/trio.g.vcf.gz \
    -O ../results/variants/trio.vcf.gz

echo "=========================================="
echo "Joint Genotyping Completed Successfully!"
echo "Output: trio.vcf.gz"
echo "=========================================="
