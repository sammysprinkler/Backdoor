#!/bin/bash
# Google Dorking - Search engine hacking for information gathering
# Options:
# <query> : Search query

# Usage: g <query>
# Example script
# g "site:example.com filetype:pdf"

# Check if googledork is installed
if ! command -v googledork &> /dev/null
then
    echo "googledork could not be found, please install it first."
    exit
fi

# Ensure query is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <query>"
    exit 1
fi

QUERY=$1

echo "Performing Google dorking with query: $QUERY"

# Perform Google dorking
googledork "$QUERY"

echo "Google dorking completed."
