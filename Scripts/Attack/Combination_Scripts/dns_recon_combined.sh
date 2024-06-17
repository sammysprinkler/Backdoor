#!/bin/bash
# DNS Reconnaissance Combined Script
# Combines the output of amass, subfinder, and crt.sh for comprehensive DNS recon.

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <target_domain>"
  exit 1
fi

echo "Running Amass..."
amass enum -d $TARGET -o amass_output.txt

echo "Running Subfinder..."
subfinder -d $TARGET -o subfinder_output.txt

echo "Running crt.sh..."
curl -s https://crt.sh/?q=%25.$TARGET | grep -oP '>\K[^<]+' | grep $TARGET > crtsh_output.txt

echo "Combining results..."
cat amass_output.txt subfinder_output.txt crtsh_output.txt | sort -u > combined_dns_recon.txt

echo "Results saved to combined_dns_recon.txt"
