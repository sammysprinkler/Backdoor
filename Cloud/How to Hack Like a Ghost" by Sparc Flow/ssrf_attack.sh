#!/bin/bash
# Perform SSRF attack
# Usage: ssrf_attack.sh <target_url>

TARGET_URL=$1

if [ -z "$TARGET_URL" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

echo "Performing SSRF attack on: $TARGET_URL"

curl -s $TARGET_URL

echo "SSRF attack completed."
