#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=0:10:00
#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --job-name=vcf-pipeline
#SBATCH --output=%x.%j.log # vcf-pipeline.123456.log

set -e

source /curc/sw/anaconda3/latest

conda activate vcf

INPUT=../01_input
OUTPUT=../03_output

#TRIMMED_READS_DIR=../03_output/trimmed_reads # you computed these - full size
TRIMMED_READS_DIR=/scratch/alpine/dcking@colostate.edu/CM580A3_variant_calling/01_input/sub # precomputed - smaller size
GENOME_DIR=$INPUT/reference_genome
GENOME_FILE=ecoli_rel606.fasta
GENOME_URL=ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/017/985/GCA_000017985.1_ASM1798v1/GCA_000017985.1_ASM1798v1_genomic.fna.gz

echo "ALIGN, COVERAGE AND VARIANT CALLING PIPELINE!"

echo -n "Starting... "
date
echo "------------------------------------------------------------------"

### Download data 
### You must comment out these lines after the first time you run it.
echo -n "DOWNLOAD GENOME: "
mkdir -p $GENOME_DIR
echo "downloading..."
curl -L -o $GENOME_DIR/$GENOME_FILE.gz $GENOME_URL
gunzip $GENOME_DIR/$GENOME_FILE.gz

### Create indexes 
### You must comment out these lines after the first time you run it.
echo -n "INDEXING GENOME... "
bwa index $GENOME_DIR/$GENOME_FILE


# Alignment

INPUT_FILES=$(ls $TRIMMED_READS_DIR/*_1*fastq*)
ALIGN_OUT=$OUTPUT/bamfiles
mkdir -p $ALIGN_OUT

echo "ALIGNMENT:"

for input_1 in $INPUT_FILES
do

    input_2=${input_1/_1/_2} # replace the "_1" with a "_2" in the filename

    OUTBASE=$(basename $input_1 .trim.fastq.gz)
    OUTFILE=${OUTBASE/_1/}
    OUTPATH=$ALIGN_OUT/$OUTFILE.bam

    echo -ne "\tALIGNMENT for $OUTFILE ..."
    bwa mem $GENOME_DIR/$GENOME_FILE $input_1 $input_2 | samtools view -b - | samtools sort - > $OUTPATH

done

# READ COVERAGE
ALIGN_INPUT=$(ls $ALIGN_OUT/*.bam)
COVERAGE_OUT=$OUTPUT/bcf
mkdir -p $COVERAGE_OUT

echo "BCF COVERAGE:"

for BAM in $ALIGN_INPUT
do
    bambase=$(basename $BAM)
    BCF=$COVERAGE_OUT/${bambase/.bam/.bcf}

    echo -ne "\tcalculating coverage for $BAM -> $BCF ..."
    bcftools mpileup -O b -o $BCF -f $GENOME_DIR/$GENOME_FILE $BAM

done


# VCF
RAW_BCF=$(ls $COVERAGE_OUT/*.bcf)
VCF_OUT=$OUTPUT/vcf
mkdir -p $VCF_OUT

echo "CALLING SNVs:"

for bcf in $RAW_BCF
do
    bcfbase=$(basename $bcf)
    VCF=$VCF_OUT/${bcfbase/.bcf/.vcf}

    echo -ne "\tcalculating vcf for $bcf -> $VCF ..."
    bcftools call --ploidy 1 -m -v -o $VCF $bcf
    echo # this command doesn't have any status output 

done

### FINAL STEP: FILTER
VCF_FILES=$VCF_OUT/*.vcf
VCF_FILTERED=$OUTPUT/vcf_filtered
mkdir -p $VCF_FILTERED

echo "FILTERING VARIANT FILES:"

for vcf_raw in $VCF_FILES
do
    vcf_raw_base=$(basename $vcf_raw)
    VCF_FINAL=$VCF_FILTERED/${vcf_raw_base/.vcf/.final.vcf}
    echo -ne "\tfiltering final variant calls $vcf_raw -> $VCF_FINAL ..."

    vcfutils.pl varFilter $vcf_raw > $VCF_FINAL
    echo
done

### Done processing ###
echo "------------------------------------------------------------------"
echo "Output files:"

# check output directories
echo # blank line
echo "Alignments: $ALIGN_OUT"
ls $ALIGN_OUT

echo # blank line
echo "Alignment Coverage (BCF): $COVERAGE_OUT"
ls $COVERAGE_OUT

echo # blank line
echo "SNVs (VCF): $VCF_OUT"
ls $VCF_OUT

echo # blank line
echo "Filtered variants (vcf_final): $VCF_FILTERED"
ls $VCF_FILTERED
echo


echo -n "Finished... "
date
echo "------------------------------------------------------------------"

