#!/bin/bash
# Wfuzz - Web application brute-forcer
# This script uses wfuzz to discover hidden directories and files.
# Options:
# -w : Wordlist to use
# -u : URL to scan
# --hc : Hide response codes

WORDLIST=$1
URL=$2
HIDE_CODES=$3

if [ -z "$WORDLIST" ] || [ -z "$URL" ] || [ -z "$HIDE_CODES" ]; then
  echo "Usage: $0 <wordlist> <url> <hide_codes>"
  exit 1
fi

wfuzz -w $WORDLIST -u $URL/FUZZ --hc $HIDE_CODES
