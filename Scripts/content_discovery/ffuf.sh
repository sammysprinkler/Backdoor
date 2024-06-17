#!/bin/bash
# FFUF - Fuzz Faster U Fool
# This script uses ffuf to discover hidden directories and files.
# Options:
# -w : Wordlist to use
# -u : URL to scan
# -o : Output file

WORDLIST=$1
URL=$2
OUTPUT=$3

if [ -z "$WORDLIST" ] || [ -z "$URL" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <wordlist> <url> <output_file>"
  exit 1
fi

ffuf -w $WORDLIST -u $URL/FUZZ -o $OUTPUT
