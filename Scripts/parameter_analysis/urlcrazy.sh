#!/bin/bash
# URLCrazy - Domain typo generator
# Options:
# -o : Output file

# Usage: urlcrazy.sh <target_domain> <output_file>
# Example script
# urlcrazy.sh example.com output.txt

# Check if urlcrazy is installed
if ! command -v urlcrazy &> /dev/null
then
    echo "urlcrazy could not be found, please install it first."
    exit
fi

# Ensure target domain and output file are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_domain> <output_file>"
    exit 1
fi

TARGET_DOMAIN=$1
OUTPUT_FILE=$2

echo "Generating domain typos for $TARGET_DOMAIN"

# Generate domain typos
urlcrazy -o $OUTPUT_FILE $TARGET_DOMAIN

echo "Domain typo generation completed. Results saved in $OUTPUT_FILE."
