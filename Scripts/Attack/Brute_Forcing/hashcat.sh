#!/bin/bash
# Hashcat - Password Recovery Tool
# Options:
# -a : Attack mode
# -m : Hash type
# -o : Output file
# <hash_file> : File containing hashed passwords
# <wordlist_file> : File containing possible passwords

# Usage: hashcat.sh <hash_file> <wordlist_file> -a <attack_mode> -m <hash_type> -o <output_file>
# Example script
# hashcat.sh hashes.txt rockyou.txt -a 0 -m 0 -o cracked.txt

# Check if hashcat is installed
if ! command -v hashcat &> /dev/null
then
    echo "hashcat could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 6 ]; then
    echo "Usage: $0 <hash_file> <wordlist_file> -a <attack_mode> -m <hash_type> -o <output_file>"
    exit 1
fi

HASH_FILE=$1
WORDLIST_FILE=$2
ATTACK_MODE=$3
HASH_TYPE=$4
OUTPUT_FILE=$5

echo "Starting password recovery with Hashcat"

# Perform password recovery
hashcat -a $ATTACK_MODE -m $HASH_TYPE $HASH_FILE $WORDLIST_FILE -o $OUTPUT_FILE

echo "Password recovery completed. Results saved in $OUTPUT_FILE"
