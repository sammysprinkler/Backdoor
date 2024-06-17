#!/bin/bash
# waybackurls - Fetch URLs from the Wayback Machine
# Options:
# None

# Usage: waybackurls.sh <target_domain>
# Example script
# waybackurls.sh example.com

# Check if waybackurls is installed
if ! command -v waybackurls &> /dev/null
then
    echo "waybackurls could not be found, please install it first."
    exit
fi

# Ensure target domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

TARGET_DOMAIN=$1

echo "Fetching URLs from the Wayback Machine for $TARGET_DOMAIN"

# Fetch URLs
waybackurls $TARGET_DOMAIN

echo "URL fetching completed."
