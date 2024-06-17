#!/bin/bash
# JavaScript Injection - Testing for IDOR Vulnerabilities
# Options:
# -u : Target URL
# -p : Payload to inject

# Usage: js_injection_idor.sh <target_url> <payload>
# Example script
# js_injection_idor.sh http://example.com/api/resource/123 "alert('IDOR')"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <payload>"
    exit 1
fi

TARGET_URL=$1
PAYLOAD=$2

echo "Starting JavaScript injection IDOR test on $TARGET_URL with payload $PAYLOAD"

# Perform JavaScript injection for IDOR vulnerabilities
curl -X GET -G --data-urlencode "$PAYLOAD" $TARGET_URL

echo "JavaScript injection IDOR test completed."
