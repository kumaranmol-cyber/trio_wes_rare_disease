# Trio WES Pipeline Workflow

## Workflow Overview

This project follows the GATK Best Practices workflow for Trio Whole Exome Sequencing (WES) analysis.

---

## Pipeline Steps

### Step 1: Data Download

Download sequencing data for:

- HG002 (Proband)
- HG003 (Father)
- HG004 (Mother)

---

### Step 2: Quality Control

Tool:

- FastQC

Purpose:

- Assess sequencing quality
- Detect adapter contamination
- Evaluate GC content

---

### Step 3: Read Trimming

Tool:

- Trimmomatic

Purpose:

- Remove adapters
- Remove low-quality bases

---

### Step 4: Alignment

Tool:

- BWA-MEM

Reference Genome:

- hg38

Output:

- SAM files

---

### Step 5: BAM Processing

Tool:

- SAMtools

Tasks:

- Convert SAM to BAM
- Sort BAM
- Index BAM

---

### Step 6: Variant Calling

Tool:

- GATK HaplotypeCaller

Output:

- GVCF files

---

### Step 7: Joint Genotyping

Tool:

- GATK GenotypeGVCFs

Output:

- Combined Trio VCF

---

### Step 8: De Novo Filtering

Tool:

- bcftools

Purpose:

Identify variants present in the child but absent in both parents.

---

### Step 9: Variant Annotation

Tool:

- ANNOVAR

Annotations include:

- RefGene
- ClinVar
- gnomAD

---

### Step 10: Candidate Prioritization

Resources:

- OMIM
- Human Phenotype Ontology (HPO)

---

## Final Output

- Annotated variants
- Candidate disease genes
- Clinical interpretation report
