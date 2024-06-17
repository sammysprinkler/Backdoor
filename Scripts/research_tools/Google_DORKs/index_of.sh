#!/bin/bash
# Google Dork - Search for Directory Listings
# Options:
# <domain> : Target domain

# Usage: index_of.sh <domain>
# Example script
# index_of.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for directory listings on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN \"index of /\""
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for directory listings completed."
