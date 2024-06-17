#!/bin/bash
# Google Dork - Search for PDF Files
# Options:
# <domain> : Target domain

# Usage: filetype_pdf.sh <domain>
# Example script
# filetype_pdf.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for PDF files on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN filetype:pdf"
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for PDF files completed."
