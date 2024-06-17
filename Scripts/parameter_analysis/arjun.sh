#!/bin/bash
# Arjun - HTTP Parameter Discovery Suite
# Options:
# -u : URL to scan
# -t : Number of threads

# Usage: arjun -u <target_url> -t 10
# Example script
# arjun -u http://example.com -t 10

# Check if arjun is installed
if ! command -v arjun &> /dev/null
then
    echo "arjun could not be found, please install it first."
    exit
fi

# Ensure URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 -u <url> -t <threads>"
    exit 1
fi

URL=$1
THREADS=$2

echo "Starting parameter analysis on $URL with $THREADS threads"

# Perform parameter analysis
arjun -u $URL -t $THREADS

echo "Parameter analysis completed."
