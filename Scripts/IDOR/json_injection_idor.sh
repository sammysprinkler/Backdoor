#!/bin/bash
# JSON Injection - Testing for IDOR Vulnerabilities
# Options:
# -u : Target URL
# -d : JSON data to send

# Usage: json_injection_idor.sh <target_url> <json_data>
# Example script
# json_injection_idor.sh http://example.com/api/resource/123 '{"key":"value"}'

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <json_data>"
    exit 1
fi

TARGET_URL=$1
JSON_DATA=$2

echo "Starting JSON injection IDOR test on $TARGET_URL with JSON data $JSON_DATA"

# Perform JSON injection for IDOR vulnerabilities
curl -X POST -H "Content-Type: application/json" -d "$JSON_DATA" $TARGET_URL

echo "JSON injection IDOR test completed."
