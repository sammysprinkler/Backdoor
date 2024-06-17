#!/bin/bash
# ParamSpider - Mining parameters from dark corners of Web Archives
# This script uses ParamSpider to find parameters.
# Options:
# -d : Domain to scan
# -o : Output file

DOMAIN=$1
OUTPUT=$2

if [ -z "$DOMAIN" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <domain> <output_file>"
  exit 1
fi

python3 paramspider.py -d $DOMAIN -o $OUTPUT
