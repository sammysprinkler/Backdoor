#!/bin/bash
# LinkFinder - Discovering endpoints in JavaScript files
# Options:
# -i : Input file (JavaScript file or URL)
# -o : Output file

# Usage: linkfinder.sh <input_file_or_url> <output_file>
# Example script
# linkfinder.sh http://example.com/script.js output.txt

# Check if linkfinder is installed
if ! command -v linkfinder &> /dev/null
then
    echo "linkfinder could not be found, please install it first."
    exit
fi

# Ensure input file or URL and output file are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file_or_url> <output_file>"
    exit 1
fi

INPUT_FILE_OR_URL=$1
OUTPUT_FILE=$2

echo "Starting endpoint discovery on $INPUT_FILE_OR_URL"

# Perform endpoint discovery
linkfinder -i $INPUT_FILE_OR_URL -o $OUTPUT_FILE

echo "Endpoint discovery completed. Results saved in $OUTPUT_FILE."
