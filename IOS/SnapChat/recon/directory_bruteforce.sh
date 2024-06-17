#!/bin/bash
# Directory Bruteforce
# Usage: directory_bruteforce.sh <url>

URL=$1

if [ -z "$URL" ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

echo "Starting directory bruteforce on: $URL"

# Using gobuster for directory brute-forcing
gobuster dir -u $URL -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -o directories.txt

echo "Directory bruteforce completed. Results saved in directories.txt"
