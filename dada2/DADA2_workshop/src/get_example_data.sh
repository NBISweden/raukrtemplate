#!/bin/bash

echo "Getting run ids from info/example_subset_info.tsv"
runs=$(cat info/example_subset_info.tsv | cut -f7| grep -v Run)
echo "Downloading fastq files for runs"
for run in $runs; do fastq-dump -O data/ --gzip --split-3 $run ; done