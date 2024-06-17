#!/bin/bash
# API Fuzzing
# Usage: api_fuzzing.sh <url> <wordlist>

URL=$1
WORDLIST=$2

if [ -z "$URL" ] || [ -z "$WORDLIST" ]; then
    echo "Usage: $0 <url> <wordlist>"
    exit 1
fi

echo "Starting API fuzzing on: $URL"

# Using wfuzz for API fuzzing
wfuzz -c -z file,$WORDLIST --hc 404,403 $URL/FUZZ -o api_fuzzing_results.txt

echo "API fuzzing completed. Results saved in api_fuzzing_results.txt"
