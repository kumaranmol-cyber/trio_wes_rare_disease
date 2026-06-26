#!/bin/bash

# ==========================================================
# Step 08 - Variant Annotation using ANNOVAR
# ==========================================================

echo "=========================================="
echo "Running ANNOVAR Annotation"
echo "=========================================="

mkdir -p ../results/annotated

TABLE_ANNOVAR=/path/to/annovar/table_annovar.pl
HUMANDB=/path/to/annovar/humandb

perl $TABLE_ANNOVAR \
../results/variants/denovo_candidates.vcf \
$HUMANDB \
-buildver hg38 \
-out ../results/annotated/denovo_annotated \
-remove \
-protocol refGene,clinvar_20240611,gnomad41_exome \
-operation g,f,f \
-nastring . \
-vcfinput

echo "=========================================="
echo "ANNOVAR Annotation Completed Successfully!"
echo "Annotated files saved in:"
echo "../results/annotated/"
echo "=========================================="
