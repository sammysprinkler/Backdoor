#!/bin/bash
# WhatWeb - Web scanner
# This script uses WhatWeb to identify websites.
# Options:
# -u : URL to scan
# -o : Output file

URL=$1
OUTPUT=$2

if [ -z "$URL" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <url> <output_file>"
  exit 1
fi

whatweb -u $URL -o $OUTPUT
