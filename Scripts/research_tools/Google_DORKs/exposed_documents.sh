#!/bin/bash
# Google Dork - Search for Exposed Documents
# Options:
# <domain> : Target domain

# Usage: exposed_documents.sh <domain>
# Example script
# exposed_documents.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for exposed documents on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN filetype:doc OR filetype:docx OR filetype:xls OR filetype:xlsx"
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for exposed documents completed."
