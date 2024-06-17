#!/bin/bash
# Waybackurls - Fetch URLs from the Wayback Machine
# This script uses waybackurls to find URLs archived by the Wayback Machine.
# Options:
# None

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <target_domain>"
  exit 1
fi

echo $TARGET | waybackurls > waybackurls_output.txt
echo "Results saved to waybackurls_output.txt"
