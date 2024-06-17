#!/bin/bash
# XSScrapy - XSS Vulnerability Scanner
# Options:
# -u : Target URL

# Usage: xsscrapy.sh <target_url>
# Example script
# xsscrapy.sh http://example.com

# Check if xsscrapy is installed
if ! command -v xsscrapy &> /dev/null
then
    echo "xsscrapy could not be found, please install it first."
    exit
fi

# Ensure target URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

TARGET_URL=$1

echo "Starting XSS scanning on $TARGET_URL"

# Perform XSS scanning
xsscrapy -u $TARGET_URL

echo "XSS scanning completed."
