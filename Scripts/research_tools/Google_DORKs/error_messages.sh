#!/bin/bash
# Google Dork - Search for Error Messages
# Options:
# <domain> : Target domain

# Usage: error_messages.sh <domain>
# Example script
# error_messages.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for error messages on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN \"error message\""
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for error messages completed."
