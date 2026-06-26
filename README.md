# Trio WES Rare Disease Pipeline

## Whole Exome Sequencing (WES) Analysis Pipeline for Rare Disease Diagnosis

## Project Description
This repository contains a complete bioinformatics workflow for analyzing Whole Exome Sequencing (WES) data from a family trio consisting of:
- Father
- Mother
- Affected Child (Proband)

The objective is to identify disease-causing genetic variants responsible for rare inherited disorders using standard bioinformatics tools and best-practice analysis pipelines.

This project demonstrates an end-to-end Next Generation Sequencing (NGS) workflow including quality control, read trimming, alignment, variant calling, annotation, and prioritization of candidate disease variants.

# Objectives
The primary goals of this project are:

- Perform quality control on raw sequencing reads
- Trim adapters and low-quality bases
- Align reads to the human reference genome
- Process BAM files
- Call genetic variants using GATK
- Perform joint genotyping for trio samples
- Identify de novo and inherited variants
- Annotate variants using ANNOVAR
- Prioritize candidate disease-causing mutations
- Generate clinically interpretable results


# Pipeline Workflow

Raw FASTQ Files
        │
        ▼
FastQC
        │
        ▼
Trimmomatic
        │
        ▼
BWA-MEM Alignment
        │
        ▼
SAMtools Processing
        │
        ▼
GATK HaplotypeCaller
        │
        ▼
Joint Genotyping
        │
        ▼
Variant Filtering
        │
        ▼
ANNOVAR Annotation
        │
        ▼
OMIM + HPO Prioritization
        │
        ▼
Candidate Disease Variant
```
# Project Structure
trio_wes_rare_disease/

├── data/
│   ├── raw/
│   ├── reference/
│   └── processed/
│
├── scripts/
│   ├── 00_download_data.sh
│   ├── 01_fastqc.sh
│   ├── 02_trimmomatic.sh
│   ├── 03_bwa_align.sh
│   ├── 04_samtools_process.sh
│   ├── 05_gatk_haplotypecaller.sh
│   ├── 06_gatk_genotypegvcfs.sh
│   ├── 07_denovo_filter.sh
│   ├── 08_annovar_annotate.sh
│   └── 09_omim_hpo_lookup.py
│
├── results/
│   ├── fastqc/
│   ├── trimmed/
│   ├── aligned/
│   ├── variants/
│   └── annotated/
│
├── report/
├── docs/
├── environment.yml
├── requirements.txt
└── README.md
```

# Software Used

- FastQC
- Trimmomatic
- BWA-MEM
- SAMtools
- GATK
- ANNOVAR
- Python 3
- Bash
- Linux


# Installation

Clone the repository

```bash
git clone https://github.com/your_username/trio_wes_rare_disease.git
```

Move into the project directory

```bash
cd trio_wes_rare_disease
```

Create the Conda environment

```bash
conda env create -f environment.yml
```

Activate the environment

```bash
conda activate trio_wes
```

Install Python packages

```bash
pip install -r requirements.txt
```


# Pipeline Steps

## Step 1

Download sequencing data.

```
00_download_data.sh
```

---

## Step 2

Run quality control.

```
01_fastqc.sh
```

---

## Step 3

Trim adapters and poor-quality bases.

```
02_trimmomatic.sh
```

---

## Step 4

Align reads to the reference genome.

```
03_bwa_align.sh
```

---

## Step 5

Sort, index and process BAM files.

```
04_samtools_process.sh
```

---

## Step 6

Call variants using GATK HaplotypeCaller.

```
05_gatk_haplotypecaller.sh
```

---

## Step 7

Perform joint genotyping.

```
06_gatk_genotypegvcfs.sh
```

---

## Step 8

Identify candidate de novo variants.

```
07_denovo_filter.sh
```

---

## Step 9

Annotate variants using ANNOVAR.

```
08_annovar_annotate.sh
```

---

## Step 10

Prioritize variants using OMIM and Human Phenotype Ontology.

```
09_omim_hpo_lookup.py
```

---

# Expected Outputs

The pipeline generates:

- Quality control reports
- Trimmed FASTQ files
- Sorted BAM files
- BAM index files
- Raw VCF files
- Filtered VCF files
- Annotated variant tables
- Candidate disease-causing variants
- Final clinical interpretation report

---

# Future Improvements

Future versions of this project may include:

- DeepVariant integration
- Structural variant detection
- CNV analysis
- Docker support
- Nextflow implementation
- Snakemake workflow
- Automated report generation
- Machine learning-based variant prioritization

---

# References

- FastQC
- Trimmomatic
- BWA
- SAMtools
- GATK Best Practices
- ANNOVAR
- OMIM
- Human Phenotype Ontology (HPO)

---

# License

This project is released under the MIT License.

---

# Author

**Anmol Kumar**

B.Tech Bioinformatics

Specialization: Artificial Intelligence & Machine Learning

GitHub: https://github.com/kumaranmol-cyber

---

## Project Status

🚧 Under Development

This repository is being developed as a complete end-to-end Trio Whole Exome Sequencing pipeline for rare disease diagnosis.
