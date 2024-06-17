#!/bin/bash
# gau - Get All URLs
# Options:
# -o : Output file

# Usage: gau.sh <target_domain> <output_file>
# Example script
# gau.sh example.com output.txt

# Check if gau is installed
if ! command -v gau &> /dev/null
then
    echo "gau could not be found, please install it first."
    exit
fi

# Ensure target domain and output file are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_domain> <output_file>"
    exit 1
fi

TARGET_DOMAIN=$1
OUTPUT_FILE=$2

echo "Starting URL gathering on $TARGET_DOMAIN"

# Perform URL gathering
gau $TARGET_DOMAIN > $OUTPUT_FILE

echo "URL gathering completed. Results saved in $OUTPUT_FILE."
