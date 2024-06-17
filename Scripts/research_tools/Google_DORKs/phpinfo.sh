#!/bin/bash
# Google Dork - Search for PHP Info Pages
# Options:
# <domain> : Target domain

# Usage: phpinfo.sh <domain>
# Example script
# phpinfo.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for PHP info pages on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN ext:php intitle:\"phpinfo()\""
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for PHP info pages completed."
