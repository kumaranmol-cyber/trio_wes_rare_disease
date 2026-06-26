#!/bin/bash

# ==========================================================
# Trio WES Rare Disease Pipeline
# Step 00 - Download GIAB Trio Dataset
# Author: Anmol Kumar
# ==========================================================

echo "Downloading GIAB Ashkenazim Trio Dataset..."

mkdir -p ../data/raw
cd ../data/raw

echo "Please download the required FASTQ files from:"
echo "https://ftp-trace.ncbi.nlm.nih.gov/ReferenceSamples/giab/data/AshkenazimTrio/"

echo "After downloading, organize them as:"
echo "data/raw/HG002/"
echo "data/raw/HG003/"
echo "data/raw/HG004/"

echo "Download step completed."
