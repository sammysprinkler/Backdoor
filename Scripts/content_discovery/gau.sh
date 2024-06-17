#!/bin/bash
# GAU - Get All URLs
# This script uses gau to fetch known URLs for a given domain.
# Options:
# None

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <target_domain>"
  exit 1
fi

gau $TARGET > gau_output.txt
echo "Results saved to gau_output.txt"
