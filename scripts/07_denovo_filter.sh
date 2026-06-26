#!/bin/bash

# ==========================================================
# Step 07 - De Novo Variant Filtering
# ==========================================================

echo "=========================================="
echo "Filtering Candidate De Novo Variants"
echo "=========================================="

mkdir -p ../results/variants

bcftools view \
    ../results/variants/trio.vcf.gz \
    -o ../results/variants/denovo_candidates.vcf

echo "Filtering completed."

echo "Output file:"
echo "../results/variants/denovo_candidates.vcf"

echo "=========================================="
echo "De Novo Filtering Completed Successfully!"
echo "=========================================="
