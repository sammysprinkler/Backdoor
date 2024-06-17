#!/bin/bash
# Web Reconnaissance Combined Script
# Combines the output of waybackurls, httprobe, and gowitness for comprehensive web recon.

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <target_domain>"
  exit 1
fi

echo "Running Waybackurls..."
echo $TARGET | waybackurls > waybackurls_output.txt

echo "Running Httprobe..."
cat waybackurls_output.txt | httprobe > httprobe_output.txt

echo "Running Gowitness..."
gowitness file -f httprobe_output.txt

echo "Results saved to gowitness_output directory"
