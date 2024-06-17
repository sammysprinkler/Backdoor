#!/bin/bash
# XSSer - Automated Cross-Site Scripting (XSS) Attack Tool
# Options:
# --url : Target URL to scan
# --Cw : Number of threads

# Usage: xsser --url <target_url> --Cw 5
# Example script
# xsser --url http://example.com --Cw 5

# Check if xsser is installed
if ! command -v xsser &> /dev/null
then
    echo "XSSer could not be found, please install it first."
    exit
fi

# Ensure URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

URL=$1

echo "Starting XSS attack on $URL"

# Perform XSS attack
xsser --url $URL --Cw 5

echo "XSS attack completed."
