#!/bin/bash
# Burp Suite Spider - Web crawler for discovering content and vulnerabilities
# Options:
# -u : URL to scan

# Usage: burpsuite_spider -u <target_url>
# Example script
# burpsuite_spider -u http://example.com

# Check if Burp Suite is installed
if ! command -v burpsuite &> /dev/null
then
    echo "Burp Suite could not be found, please install it first."
    exit
fi

# Ensure URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 -u <url>"
    exit 1
fi

URL=$1

echo "Starting spidering on $URL"

# Perform spidering
burpsuite spider -u $URL

echo "Spidering completed."
