#!/bin/bash

# ==========================================================
# Step 05 - Variant Calling using GATK HaplotypeCaller
# ==========================================================

echo "=========================================="
echo "Running GATK HaplotypeCaller"
echo "=========================================="

mkdir -p ../results/variants

REFERENCE=../data/reference/hg38.fa

for SAMPLE in HG002 HG003 HG004
do
    echo "Calling variants for ${SAMPLE}..."

    gatk HaplotypeCaller \
        -R $REFERENCE \
        -I ../results/aligned/${SAMPLE}_sorted.bam \
        -O ../results/variants/${SAMPLE}.g.vcf.gz \
        -ERC GVCF

    echo "${SAMPLE} variant calling completed."
done

echo "=========================================="
echo "Variant Calling Completed Successfully!"
echo "Output saved in results/variants/"
echo "=========================================="
