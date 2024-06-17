#!/bin/bash
# Google Dork - Search for Admin Pages
# Options:
# <domain> : Target domain

# Usage: admin_pages.sh <domain>
# Example script
# admin_pages.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for admin pages on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN inurl:admin"
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for admin pages completed."
