#!/bin/bash
# Google Dork - Search for Email Addresses
# Options:
# <domain> : Target domain

# Usage: email_search.sh <domain>
# Example script
# email_search.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for email addresses on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN \"@\""
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for email addresses completed."
