#!/bin/bash
# Feroxbuster - Fast, simple, recursive content discovery tool
# This script uses feroxbuster to discover hidden directories and files.
# Options:
# -u : URL to scan
# -w : Wordlist to use
# -o : Output file

URL=$1
WORDLIST=$2
OUTPUT=$3

if [ -z "$URL" ] || [ -z "$WORDLIST" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <url> <wordlist> <output_file>"
  exit 1
fi

feroxbuster -u $URL -w $WORDLIST -o $OUTPUT
