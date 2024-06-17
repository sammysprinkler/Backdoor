#!/bin/bash
# Google Dork - Search for Database Files
# Options:
# <domain> : Target domain

# Usage: database_files.sh <domain>
# Example script
# database_files.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for database files on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN filetype:sql"
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for database files completed."
