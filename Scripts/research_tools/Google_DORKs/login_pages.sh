#!/bin/bash
# Google Dork - Search for Login Pages
# Options:
# <domain> : Target domain

# Usage: login_pages.sh <domain>
# Example script
# login_pages.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for login pages on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN inurl:login"
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for login pages completed."
