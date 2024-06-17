#!/bin/bash
# Google Dork - Search for Configuration Files
# Options:
# <domain> : Target domain

# Usage: config_files.sh <domain>
# Example script
# config_files.sh example.com

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Searching for configuration files on $DOMAIN"

# Perform Google Dorking
query="site:$DOMAIN filetype:conf OR filetype:cfg OR filetype:config"
xdg-open "https://www.google.com/search?q=$query"

echo "Google Dorking for configuration files completed."
