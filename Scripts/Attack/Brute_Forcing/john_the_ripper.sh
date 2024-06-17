#!/bin/bash
# John the Ripper - Password Cracking Tool
# Options:
# --wordlist : Path to wordlist file
# <file> : Path to file containing hashed passwords

# Usage: john_the_ripper.sh <hash_file> --wordlist=<wordlist_file>
# Example script
# john_the_ripper.sh hashes.txt --wordlist=rockyou.txt

# Check if John the Ripper is installed
if ! command -v john &> /dev/null
then
    echo "John the Ripper could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <hash_file> --wordlist=<wordlist_file>"
    exit 1
fi

HASH_FILE=$1
WORDLIST=$2

echo "Starting password cracking with John the Ripper"

# Perform password cracking
john $HASH_FILE $WORDLIST

echo "Password cracking completed."
