#!/bin/bash
# Fuzzing - Automated Fuzzing for IDOR Vulnerabilities
# Options:
# -u : Target URL
# -w : Wordlist

# Usage: fuzzing_idor.sh <target_url> <wordlist>
# Example script
# fuzzing_idor.sh http://example.com/api/resource/ FUZZ

# Check if wfuzz is installed
if ! command -v wfuzz &> /dev/null
then
    echo "wfuzz could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <wordlist>"
    exit 1
fi

TARGET_URL=$1
WORDLIST=$2

echo "Starting fuzzing IDOR test on $TARGET_URL with wordlist $WORDLIST"

# Perform fuzzing for IDOR vulnerabilities
wfuzz -c -z file,$WORDLIST --sc 200 $TARGET_URL

echo "Fuzzing IDOR test completed."
