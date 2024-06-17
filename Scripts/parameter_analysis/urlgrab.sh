#!/bin/bash
# URLGrab - Simple URL grabbing script
# Options:
# <target_domain> : Target domain

# Usage: urlgrab.sh <target_domain>
# Example script
# urlgrab.sh example.com

# Ensure target domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

TARGET_DOMAIN=$1

echo "Grabbing URLs for $TARGET_DOMAIN"

# Grab URLs
curl -s "https://web.archive.org/cdx/search/cdx?url=$TARGET_DOMAIN/*&output=txt&fl=original&collapse=urlkey" | tee urls.txt

echo "URL grabbing completed. Results saved in urls.txt."
